# frozen_string_literal: true

class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :email, :phone_number, :birthdate, :address
end
