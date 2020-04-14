class Exam < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :name, :content, presence: true

  def finished?
    score.present?
  end
  
  def update_score(score)
    self.update_attribute(:score, score) if score.between?(1, 100)
  end
end