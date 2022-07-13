# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'check associations' do
    it { should have_many(:posts) }
    it { should have_many(:likes) }
    it { should have_many(:comments) }
    it { should have_many(:stories) }
  end
  describe 'check validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
  end

  describe 'password_complexity' do
    let(:user) { create(:user) }
    it 'passowrd test' do
      expect(user.password).to match(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/)
    end
  end
end
