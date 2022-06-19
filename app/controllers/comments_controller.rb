# frozen_string_literal: true

# comments controller
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: %i[edit update destroy]

  def index
    @comments = @post.comments.includes(:user)
  end

  def create
    ActiveRecord::Base.transaction do
      @comment = Comment.new(comment_params)
      if @comment.save
        @post = @comment.post
        respond_to :js
      else
        flash[:alert] = 'Something went wrong ...'
      end
    end
  end

  def edit; end

  def update
    ActiveRecord::Base.transaction do
      if @comment.update(comment_params)
        redirect_to posts_path
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    ActiveRecord::Base.transaction do
      authorize @comment
      if @comment.destroy
        respond_to :js
      else
        flash[:alert] = 'Something went wrong ...'
      end
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
