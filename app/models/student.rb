class Student < ApplicationRecord
  has_one :duck
  validates :name, presence: true
end
