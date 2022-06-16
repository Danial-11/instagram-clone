# frozen_string_literal: true

# comments controller
class CommentsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

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

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
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
      @comment = Comment.find(params[:id])
      authorize @comment
      @post = @comment.post
      if @comment.destroy
        respond_to :js
      else
        flash[:alert] = 'Something went wrong ...'
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
