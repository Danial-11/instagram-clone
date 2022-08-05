# frozen_string_literal: true

class Api::StoriesController < ApplicationController
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  before_action :set_story, only: %i[destroy]
  def index
    @stories = Story.all
    @story = Story.new
    @photos = Photo.all
    @stories_with_photos = [@stories, @photos]
    render json: @stories_with_photos
  end

  def create
    @user = User.find(1)
    @story = @user.stories.create(story_params)
    @story.save
    render json: @story
  end

  def show
    @stories = Story.limit(1000).includes(:photos, :user)
    render json: @stories
  end

  def destroy
    @story.destroy
    render json: { notice: 'Story was successfully removed.' }
  end

  def followers
    user = User.find(13)
    @followers = user.followers
    render json: @followers
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
