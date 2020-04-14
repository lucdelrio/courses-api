# frozen_string_literal: true

class Teacher < ApplicationRecord
  validates :name, :surname, :email, :phone_number, presence: true
  validates :email, uniqueness: true
end
