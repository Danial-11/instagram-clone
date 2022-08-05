# frozen_string_literal: true

# rubocop required comment
class Story < ApplicationRecord
  has_many :photos, as: :imageable, dependent: :destroy
  validates :caption, presence: true
end
