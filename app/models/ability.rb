class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Widget.named('foo')
  end
end
