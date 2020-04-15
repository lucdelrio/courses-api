# frozen_string_literal: true

class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :email, :phone_number, :birthdate, :address
end
