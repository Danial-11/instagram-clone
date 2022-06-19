# frozen_string_literal: true

# rubocop required comment
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
