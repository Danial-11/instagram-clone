# frozen_string_literal: true

# rubocop required comment
class Follow < ApplicationRecord
  belongs_to :follower, class_name: 'User',
                        counter_cache: :followings_count,
                        inverse_of: :following_relationships
  belongs_to :following, class_name: 'User',
                         counter_cache: :followers_count,
                         inverse_of: :follower_relationships
end
