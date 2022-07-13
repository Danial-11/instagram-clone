# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  subject! { Post.new(content: 'this is a post') }
  describe 'check associations' do
    it { should belong_to(:user) }
    it { should have_many(:photos) }
    it { should have_many(:likes) }
    it { should have_many(:comments) }
  end
  describe 'check validations' do
    it { should validate_presence_of(:content) }
    it 'nil content will give greens status' do
      subject.content = nil
      expect(subject).to_not be_valid
    end
  end
end
