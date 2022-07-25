# frozen_string_literal: true

# User controller
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_posts = current_user.posts
    @followers = current_user.followers
  end

  def search
    @user_posts = current_user.posts
    @query = params[:query]
    @usersearch = User.find_by(username: @query)
    if @usersearch.present?
      if current_user.username == @usersearch.username
        render 'index'
      else
        render 'search'
      end
    else
      flash[:error] = 'User not found'
      redirect_to posts_path
    end
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
    return if @user

    flash[:danger] = 'User does not exist!'
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
