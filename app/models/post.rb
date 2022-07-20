# frozen_string_literal: true

# rubocop required comment
class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, as: :imageable, dependent: :destroy
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy, inverse_of: :post
  has_many :comments, -> { order(created_at: :desc) }, dependent: :destroy, inverse_of: :post
  validates :content, presence: true
end
