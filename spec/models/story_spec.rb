# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Story, type: :model do
  subject! { Story.new(caption: 'this is my story') }
  describe 'check associations' do
    it { should belong_to(:user) }
    it { should have_many(:photos) }
  end
  describe 'check validations' do
    it { should validate_presence_of(:caption) }
    it 'nil caption will give greens status' do
      subject.caption = nil
      expect(subject).to_not be_valid
    end
  end
end
