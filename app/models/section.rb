class Section < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  has_many :sections_students, dependent: :destroy
  has_many :students, through: :sections_students
end
