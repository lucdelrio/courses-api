# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :teachers, dependent: :destroy
  has_many :students, dependent: :destroy

  validates :name, :workload, :price, presence: true
  validates :name, uniqueness: true
end
