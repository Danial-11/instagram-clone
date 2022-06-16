class Story < ApplicationRecord
  belongs_to :user
  has_many :photos, as: :imageable, dependent: :destroy
  validates :caption, presence: true
end
