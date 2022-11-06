class Student < ApplicationRecord
  has_many :sections_students, dependent: :destroy
  has_many :sections, through: :sections_students

  validates :first_name, :last_name, :email, :student_id, :physical_address, :phone_number, presence: true
end
