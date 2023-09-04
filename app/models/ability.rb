# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Picture

    return unless user.present?
    
    can [:update, :destroy, :create], Picture, user: user
  end
end
