# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email(domain: 'google.com') }
    username { Faker::Name.first_name }
    password { 'ASdf@123' }
    password_confirmation { 'ASdf@123' }
  end
end
