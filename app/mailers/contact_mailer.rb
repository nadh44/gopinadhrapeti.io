class ContactMailer < ApplicationMailer
# track open: true, click: true
# track extra: {guest_id: 1}
 default from: 'malibupmt@gmail.com'


# def initialize(data)
# raise data.to_yaml
# end

def enquery_email(enquery)
     @enquery = enquery
   # attachments["#{@contact_page.name}"] = File.read("#{@contact_page.document.path}")
     
    
    	mail(to: 'suresh.ch471@gmail.com', subject: 'Recieved A Contact Enquery')
    
    end


    def contact_email(contact_page)
         track open: true, click: true
        track extra: {guest_id: contact_page.phone}
     @contact_page = contact_page
   # attachments["#{@contact_page.name}"] = File.read("#{@contact_page.document.path}")
    #  if @contact_page.document.present?
    #  	path = @contact_page.document.path
    #  	 ext = File.extname(path.to_s)
    #  	   if ext == ".pdf"
    #       attachments["#{@contact_page.name}.pdf"] = File.read("#{@contact_page.document.path}") 
    #       elsif ext == ".docx"
    #       attachments["#{@contact_page.name}.doc"] = File.read("#{@contact_page.document.path}") 
    #       elsif ext == ".jpeg"
    #       attachments["#{@contact_page.name}.jpeg"] = File.read("#{@contact_page.document.path}") 
     #      end
    #  end
    
    	mail(to: 'suresh.ch471@gmail.com', subject: 'Recieved A Contact Enquery')
    
    end

   

end
