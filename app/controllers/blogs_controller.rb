class BlogsController < ApplicationController
  require 'benchmark'


		before_action :set_blog, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show, :index ]

def index

@blog = Blog.where( state: true ).paginate(:page => params[:page],  :per_page => 12).order('id DESC')


@blog_last = @blog.first

end
def ourblog

@blog = Blog.where( state: true ).paginate(:page => params[:page],  :per_page => 12).order('id DESC')

end

def latest_blogs
if current_user.admin?
@blog = Blog.paginate(:page => params[:page],  :per_page => 12).order('id DESC')
else
 flash[:error] = "you are not authorised to visit this section"
redirect_to root_path
end 

end 

def new
  @blog = Blog.new
end

 def show
 @blog_photos = @blog.blog_photos
 title = @blog.title
  
 keywords = title.split(/\W+/)
  set_meta_tags title: @blog.title,
            site: 'Telugol',
            reverse: true,
            description: @blog.description.gsub(/<.*?>/, ""), 
            keywords: keywords,
            current_url: request.url,
           # image: @blog.blog_photos.first.image_file_name,
           # refresh: 30,
               alternate: [
             { href: 'https://malibuitlabs.com/about'},
             { href: 'https://malibuitlabs.com/services'},
             { href: 'https://malibuitlabs.com/blogs'},
             { href: 'https://malibuitlabs.com/careers'},       
              ]
           
 
 end


  def create
  #  @blog = Blog.new(blog_params)
     @blog = current_user.blogs.build(blog_params)
    if @blog.save
      if params[:images]
        params[:images].each do |image|
          @blog.blog_photos.create(image: image)
        end
      end

      @blog_photos = @blog.blog_photos
      redirect_to edit_blog_path(@blog), notice: "Saved..."
    else
      render :new
    end
  end

  def edit
     @blog_photos = @blog.blog_photos
  end

   def update
      if current_user.admin?
        if @blog.update(admin_blog_params)
        #redirect_to root_path, notice: "Updated..."
        redirect_to latest_blogs_path, notice: "Updated..."
        else
         render :edit
        end
      else  
        if @blog.update(blog_params)
          if params[:images]
            params[:images].each do |image|
            @blog.blog_photos.create(image: image)
            end
          end
          redirect_to blogs_path, notice: "Updated..."
          
        else
          render :edit
        end
      end
   end

  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
     format.html { redirect_to blogs_path }
     # format.json { head :no_content }
   end
 end

  


   
private
  def set_blog
    @blog = Blog.friendly.find(params[:id])

    
  end 

def blog_params
    params.require(:blog).permit( :title, :description, :category, :keywords, :user_id, :name)
end
def admin_blog_params
    params.require(:blog).permit( :title, :description, :category, :keywords, :user_id, :name, :state)
end



end
