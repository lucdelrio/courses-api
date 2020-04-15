# frozen_string_literal: true

class ExamSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :score
end
