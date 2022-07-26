# frozen_string_literal: true

class Api::StoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_story, only: %i[destroy]

  def index
    @stories = Story.all.limit(1000).includes(:photos, :user)
    @story = Story.new
    render json: @stories
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
    render json: @story
  end

  def show
    @stories = Story.all.limit(1000).includes(:photos, :user)
    render json: @stories
  end

  def destroy
    @story.destroy
    render json: { notice: 'Story was successfully removed.' }
  end

  private

  def set_story
    @story = Story.find(params[:id])
    return if @story

    render json: { error: 'Story does not exist' }, status: :not_found
    redirect_to root_path
  end

  def story_params
    params.require(:story).permit(:caption)
  end
end
