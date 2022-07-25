# frozen_string_literal: true

# stories controller
class StoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_story, only: %i[destroy]

  def index
    @stories = Story.all.limit(1000).includes(:photos, :user)
    @story = Story.new
  end

  def create
    @story = current_user.stories.create(story_params)
    image = params[:images]
    ActiveRecord::Base.transaction do
      if @story.save
        image.each do |img|
          @story.photos.create(image: img)
        end
        flash[:notice] = 'Story Created'
      else
        flash[:alert] = 'Something went wrong!'
      end
    end
    redirect_to stories_path
  end

  def show
    @stories = Story.all.limit(1000).includes(:photos, :user)
  end

  def destroy
    ActiveRecord::Base.transaction do
      if @story.destroy
        flash[:notice] = 'Story deleted'
      else
        flash[:alert] = 'Something went wrong ...'
      end
    rescue ActiveRecord::RecordNotDestroyed => e
      render json: {
        error: e.to_s
      }, status: :not_found
    end
    redirect_to stories_path
  end

  private

  def set_story
    @story = Story.find(params[:id])
    authorize @story
    return if @story

    flash[:danger] = 'Story does not exist'
    redirect_to root_path
  end

  def story_params
    params.require(:story).permit(:caption)
  end
end
