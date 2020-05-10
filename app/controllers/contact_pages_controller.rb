class ContactPagesController < ApplicationController
def new
 @contact_page =  ContactPage.new
 end

 def create
#  render text: contact_page_params.to_yaml and return

  @contact_page = ContactPage.new(contact_page_params)
#   if @contact_page.valid?
 if    @contact_page.save
  
   contact_page = @contact_page
  #  ContactMailer.new(contact_page).contact_email(contact_page).deliver_now
   ContactMailer.contact_email(contact_page).deliver_now
    #redirect_to contact_path, notice: 'Message sent'
   flash[:notice]="we have recieved your details successfully"
   redirect_to contact_path
  else
   
   if @contact_page.errors.any?
  flash[:notice]= "Please fill all the manditory fields"
  end


   render :new
  end



end

private
  def contact_page_params
    params.require(:contact_page).permit( :name, :email, :phone, :messsage, :document)

  end


end
