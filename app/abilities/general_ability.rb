class GeneralAbility
  include CanCan::Ability

  def initialize(user)
    if alpha?(user)
      can :manage, :mailchimp
    end
  end
  
  private

  def alpha?(user)
    user.account_tester_level == 'alpha'
  end
end
