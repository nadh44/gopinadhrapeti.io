class Career < ApplicationRecord

	has_attached_file :resume
	#validates_attachment_content_type :resume, :content_type => "application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document" 
	#validates_attachment :resume, :content_type =>  %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) 
	validates_attachment_content_type :resume, {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
