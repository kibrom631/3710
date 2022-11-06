json.extract! student, :id, :first_name, :last_name, :email, :student_id, :physical_address, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
