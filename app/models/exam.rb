class Exam < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :name, :content, presence: true

  def finished?
    score.present?
  end
end