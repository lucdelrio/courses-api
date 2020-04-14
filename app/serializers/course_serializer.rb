class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :workload, :price

  has_many :students, :teachers, :exams
end
