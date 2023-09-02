# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Picture

    return unless user.present?
    
    can :update, Picture, user: user
    can :destroy, Picture, user: user
    can :create, Picture, user: user
  end
end
