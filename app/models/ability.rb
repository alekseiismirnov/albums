# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :delete, Picture, user :user
    can :update, Picture, user :user
  end
end
