class Course < ApplicationRecord
  belongs_to :prefix, optional: true
  has_many :sections, dependent: :nullify
end
