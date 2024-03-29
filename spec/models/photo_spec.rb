# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Photo, type: :model do
  it { should belong_to(:imageable) }
end
