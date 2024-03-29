# frozen_string_literal: true

# class comment policy
class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    user && user == record.user
  end

  def destroy?
    user && user == record.user
  end

  def edit?
    user && user == record.user
  end
end
