# frozen_string_literal: true

FactoryBot.define do
  factory :exam do
    name { Faker::ProgrammingLanguage.name }
    content { Faker::Lorem.questions(3) }
    score { Faker::Number.number(2) }
  end
end
