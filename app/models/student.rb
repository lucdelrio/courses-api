# frozen_string_literal: true

class Student < ApplicationRecord
  has_many :exams

  validates :name, :surname, :email, :phone_number, presence: true
  validates :email, uniqueness: true
end
