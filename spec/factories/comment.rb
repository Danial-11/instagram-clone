# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.words(number: 2..10) }
  end
end
