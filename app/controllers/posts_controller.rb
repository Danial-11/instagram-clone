# frozen_string_literal: true

# post controller
class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[show destroy edit update]

  def index
    @posts = Post.includes(:photos, :user, :likes).order('created_at desc').paginate(page: params[:page],
                                                                                     per_page: 3)
    @post = Post.new
  end

  def create
    ActiveRecord::Base.transaction do
      @post = current_user.posts.build(post_params)
      if @post.save!
        image = params[:images]
        if image.present?
          image.each do |img|
            @post.photos.create!(image: img)
          end
        end
        redirect_to posts_path
        flash[:notice] = 'Post created'
      else
        flash[:alert] = 'Something went wrong ...'
        redirect_to posts_path
      end
    end
  end

  def edit
    authorize @post
  end

  def update
    ActiveRecord::Base.transaction do
      if @post.update(post_params)
        redirect_to posts_path
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def show
    authorize @post
  end

  def destroy
    ActiveRecord::Base.transaction do
      if @post.user == current_user
        begin
          if @post.destroy
            flash[:notice] = 'Post deleted'
          else
            flash[:alert] = 'Something went wrong ...'
          end
        rescue ActiveRecord::RecordNotDestroyed => e
          render json: {
            error: e.to_s
          }, status: :not_found
        end
      end
    end
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find_by(id: params[:id])
    return if @post

    render 'post_not_found'
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
