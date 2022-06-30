# frozen_string_literal: true

# rubocop required comment
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  after_commit
  validates :content, presence: true
  after_commit :action_comment

  private

  def action_comment
    ActionCable.server.broadcast 'comments_channel', {
      html: ApplicationController.new.render_to_string(partial: 'shared/comment_material', locals: { comment: self }, formats: [:html])
    }
  end
end
