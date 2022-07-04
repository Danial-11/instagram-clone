# frozen_string_literal: true

# Likes controller
class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    @post = @like.post
  rescue ActiveRecord::RecordInvalid => e
    flash[:alert] = e.record.errors.full_messages
  else
    flash[:notice] = 'Liked'
  end

  def destroy
    @like = current_user.likes.find_by(id: params[:id]).destroy
    @post = @like.post
  rescue ActiveRecord::RecordNotDestroyed => e
    flash[:alert] = e.record.errors.full_messages
  else
    flash[:notice] = 'Unliked'
  end
end
