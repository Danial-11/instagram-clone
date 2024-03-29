# frozen_string_literal: true

# comments controller
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: %i[edit update destroy]

  def create
    @comment = Comment.new(comment_params)
    @post = @comment.post
    @comment.save!
    authorize @comment
  rescue ActiveRecord::RecordInvalid => e
    flash[:alert] = e.record.errors.full_messages
  else
    flash[:notice] = 'Comment created'
  end

  def edit
    authorize @comment
  end

  def update
    if @comment.update(comment_params)
      redirect_to posts_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @comment
    @comment.destroy
  rescue ActiveRecord::RecordNotDestroyed => e
    flash[:alert] = e.record.errors.full_messages
  else
    flash[:notice] = 'Comment deleted'
  end
end

private

def set_comment
  @comment = Comment.find_by(id: params[:id])
  @post = @comment.post
end

def comment_params
  params.require(:comment).permit(:user_id, :post_id, :content)
end
