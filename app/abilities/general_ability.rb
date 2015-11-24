class GeneralAbility
  include CanCan::Ability

  def initialize(user)
    if alpha?(user)
      can :manage, :mailchimp
      can :manage, :planning
    end
    if beta?(user)
    end
    can :manage, :persistent_contact_searches
  end
  
  private
  
  def alpha?(user)
    user.account_tester_level == 'alpha'
  end

  def beta?(user)
    tl = user.account_tester_level 
    tl == 'alpha' || tl == 'beta'
  end
end
