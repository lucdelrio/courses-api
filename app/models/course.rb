# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :teachers
  has_many :students
  has_many :exams, dependent: :destroy

  validates :name, :workload, :price, presence: true
  validates :name, uniqueness: true

  def student_has_finished?(student_id)
    find_finished_exams_by_student(student_id) == find_exams_by_student(student_id)
  end

  def status
    return 'in_progress' if exams.empty? || exams.where.not(score: nil) == exams.count
    'finished'
  end

  private

  def find_finished_exams_by_student(student_id)
    exams.find_by(student_id: student_id).where.not(score: null)
  end

  def find_exams_by_student(student_id)
    exams.find_by(student_id: student_id)
  end
end
