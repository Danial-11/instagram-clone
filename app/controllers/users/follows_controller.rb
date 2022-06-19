# frozen_string_literal: true

# class users for follow
class Users::FollowsController < ApplicationController
  before_action :set_user

  def create
    return unless current_user.follow(@user.id)

    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end

def destroy
  return unless current_user.unfollow(@user.id)

  respond_to do |format|
    format.html { redirect_to @user }
    format.js { render action: :create }
  end
end

  private

def set_user
  @user = User.find_by(id: params[:user_id])
end
