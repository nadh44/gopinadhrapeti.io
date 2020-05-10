json.extract! enquiry, :id, :first_name, :last_name, :email, :phonenumber, :message, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
