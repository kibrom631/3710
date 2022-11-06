class Semester < ApplicationRecord
  has_many :sections, dependent: :nullify

  enum semester: { spring: 'Spring', summer: 'Summer', fall: 'Fall', winter: 'Winter' }
end
