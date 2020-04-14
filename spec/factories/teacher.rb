FactoryBot.define do
  factory :teacher do
    name { Faker::Name.unique.first_name }
    surname { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.unique.email }
  end
end
