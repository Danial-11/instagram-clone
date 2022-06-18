# frozen_string_literal: true

# class postpolicy
class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    true
  end

  def show?
    return true if record.user.account_type == 'public'

    record.user.account_type == 'private' && record.user.follow_status(user) != 'pending' ||
      record.user_id == user.id
  end

  def edit?
    update?
  end

  def update?
    user && user == record.user
  end

  def destroy?
    user && user == record.user
  end
end
