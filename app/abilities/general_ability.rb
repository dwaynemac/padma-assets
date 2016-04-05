class GeneralAbility
  include CanCan::Ability

  def initialize(user)
    if alpha?(user)
      can :manage, :mailchimp
      can :manage, :planning
    end

    if beta?(user)
    end

    if in_country?(user,'Argentina')
      can :manage, :derose_events
    end
  end
  
  private

  def in_country?(user,country_name)
    name = user.current_account.try(:name)
    if name
      @country = Rails.cache.fetch("countryfor#{name}") do
        user.current_account.padma.country
      end
      @country == country_name
    end
  end
  
  def alpha?(user)
    user.account_tester_level == 'alpha'
  end

  def beta?(user)
    tl = user.account_tester_level 
    tl == 'alpha' || tl == 'beta'
  end
end
