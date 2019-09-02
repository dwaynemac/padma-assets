class GeneralAbility
  include CanCan::Ability

  def initialize(user)
    if alpha?(user)
      can :manage, :planning
    end

    if beta?(user)
    end

    if in_country?(user,'Argentina')
      can :manage, :derose_events
      can :manage, :office_argentina
    end

    can :manage, :asana_com
    can :see, :mailchimp
    if petal_enabled?(user,'mailchimp')
      can :configure, :mailchimp
    end
  end
  
  private

  def in_country?(user,country_name)
    name = user.current_account.try(:name)
    if name
      @country = Rails.cache.fetch("countryfor#{name}") do
        padma_account(user).try(:country)
      end
      @country == country_name
    end
  end

  def padma_account(user)
    if user.current_account.respond_to?(:padma)
      user.current_account.padma
    else
      user.current_account
    end
  end

  def petal_enabled?(user,petal_name)
    petal_name.in?(padma_account(user).enabled_petals||[])
  end
  
  def alpha?(user)
    user.account_tester_level == 'alpha'
  end

  def beta?(user)
    tl = user.account_tester_level 
    tl == 'alpha' || tl == 'beta'
  end
end
