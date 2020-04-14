# frozen_string_literal: true

FactoryBot.define do
  factory :course do
    name { Faker::ProgrammingLanguage.name }
    workload { Faker::Number.number(5) }
    price { Faker::Number.number(4) }
  end
end
