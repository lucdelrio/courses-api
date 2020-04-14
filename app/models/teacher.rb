# frozen_string_literal: true

class Teacher < ApplicationRecord
  validates :name, :surname, :email, :phone_number, presence: true
  validates :email, uniqueness: true

  def correct_exam(exam_id, score)
    Exam.find(exam_id).update_score(score)
  end
end
