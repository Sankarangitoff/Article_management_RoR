class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :read, Article
      can :create, Article
      can :update, Article
    elsif user.user?
      can :read, Article
      can :create, Article
    else
      can :read, Article
    end
  end
end
