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

  def view?(record, current_user)
    return true if record.user.account_type == 'public'

    record.user.account_type == 'private' && record.user.follow_status(current_user) != 'pending' ||
      record.user_id == current_user.id
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
