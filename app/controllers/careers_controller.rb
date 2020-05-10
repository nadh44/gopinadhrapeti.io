class CareersController < ApplicationController


def new
 @career =  Career.new
 end

 def create
#  render text: contact_page_params.to_yaml and return

  @career = Career.new(career_params)

#   if @contact_page.valid?
 if   @career.save
  

  career = @career
  #CareerMailer.career_email(career).deliver_now
   flash[:notice]="details saved successfully"
  redirect_to root_path
  else
   
   if @career.errors.any?
  flash[:notice]= "Please fill all the manditory fields"
  end


   render :new
  end



end

private
  def career_params
    params.require(:career).permit( :name, :email, :phone, :comments, :post_applied, :resume)

  end

end
