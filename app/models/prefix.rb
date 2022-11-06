class Prefix < ApplicationRecord
  has_many :courses, dependent: :nullify
end
