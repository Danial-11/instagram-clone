# frozen_string_literal: true

# class for follows
class Users::FollowsController < ApplicationController
  before_action :set_user

  def create
    return unless current_user.follow(@user.id)
  end

  def destroy
    return unless current_user.unfollow(@user.id)

    respond_to do |format|
      format.js { render action: :create }
    end
  end

  private

  def set_user
    @user = User.find_by(id: params[:user_id])
  end
end
