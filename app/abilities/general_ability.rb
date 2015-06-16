class GeneralAbility
  include CanCan::Ability

  def initialize(user)
    if alpha?(user)
      can :manage, :mailchimp
    end
  end
  
  private

  def alpha?(user)
    user.current_account.padma.try(:tester_level) == 'alpha'
  end
end
