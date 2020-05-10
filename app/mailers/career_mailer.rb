class CareerMailer < ApplicationMailer
 default to: 'careers@malibuitlabs.com'




    def career_email(career)
    	 @career = career
         attachments["#{@career.name}.doc"] = File.read("#{@career.resume.path}") 
      mail(from: 'support@rvngo.com', subject: 'New Resume Recieved')
    end

   end
