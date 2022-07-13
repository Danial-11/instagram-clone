# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :post do
    content { Faker::Lorem.words(number: 2..10) }
  end
end
