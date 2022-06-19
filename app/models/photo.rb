# frozen_string_literal: true

# rubocop required comment
class Photo < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  mount_uploader :image, ImageUploader

  LIMIT = 10
  validate(&:validate_max_photo)

  def validate_max_photo
    return unless imageable

    errors.add(:base, :exceeded_quota) if imageable.photos.count >= LIMIT
  end
end
