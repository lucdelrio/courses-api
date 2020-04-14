class ExamSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :score
end
