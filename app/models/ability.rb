# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, Food
    can :read, Recipe

    return unless user.present?

    can :manage, Food, user_id: user.id
    can :manage, Recipe, user_id: user.id

    return unless user.role == 'admin'

    can :manage, :all
  end
end
