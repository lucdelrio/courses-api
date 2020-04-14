# frozen_string_literal: true

class Student < ApplicationRecord
  validates :name, :surname, :email, :phone_number, presence: true
  validates :email, uniqueness: true
end
