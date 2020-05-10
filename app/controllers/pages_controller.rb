class PagesController < ApplicationController
  def index
  	 @blog = Blog.where( state: true ).paginate(:page => params[:page],  :per_page => 12).order('id DESC')
  	#@contact_page =  ContactPage.new
  	 @enquiry = Enquiry.new
  	
  
  end

  def contact

  end
  def service 
  	@enquiry = Enquiry.new
  end
  def  technologies 
   @enquiry = Enquiry.new
  end
 def magento
 end
 def shopify
 end
 def woocommerce
 end
end
