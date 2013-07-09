class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user ||= User.new
    if @user.role == 'admin'
      can :manage, :all
    else
      binding.pry
      if @user.role == 'user'
        can :manage, :recipes
        can :show, :user
      end
    end
  end
end
