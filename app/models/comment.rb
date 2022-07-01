# frozen_string_literal: true

# rubocop required comment
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true
  after_commit :action_comment, on: :create
  after_commit :remove_comment, on: :destroy

  private

  def action_comment
    ActionCable.server.broadcast 'comments_channel', {
      action: "append",
      post_id: post.id,
      html: ApplicationController.new.render_to_string(partial: 'shared/comment_material', locals: { comment: self })
    }
  end

  def remove_comment
    ActionCable.server.broadcast 'comments_channel', {
      action: "delete", comment_id: id, post_id: post.id
    }
  end
end
