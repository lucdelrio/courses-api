class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :email, :phone_number, :birthdate, :address
end
