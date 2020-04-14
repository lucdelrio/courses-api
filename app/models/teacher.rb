class Teacher < ApplicationRecord
  validates :name, :surname, :email, :phone_number, presence: true
  validates :email, uniqueness: true
end
