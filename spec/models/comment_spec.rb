# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject! { Comment.new(content: 'this is a comment') }
  it { should belong_to(:user) }
  it { should belong_to(:post) }
  describe 'check validations' do
    it { should validate_presence_of(:content) }
    it 'Empty title should give invalid response' do
      subject.content = nil
      expect(subject).to_not be_valid
    end
  end
end
