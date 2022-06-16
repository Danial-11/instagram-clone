# frozen_string_literal: true

# User controller
class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :find_user, only: %i[ ]

  def index
    @user_posts = current_user.posts
    @users = User.includes(:posts)
    redirect_to new_user_session_path unless user_signed_in?
  end

  def search
    @user = User.find_by(username: params[:query])
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

  def edit; end

  # def update
  #   ActiveRecord::Base.transaction do
  #     if @user.update(user_params)
  #       redirect_to users_path
  #     else
  #       render :edit, status: :unprocessable_entity
  #     end
  #   end
  # end

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
