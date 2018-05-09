class Ability
  include CanCan::Ability

  # Define abilities for the passed in user here. For example:
  #
  def initialize(user)
      user ||= AdminUser.new # guest user (not logged in)
    case user.email
    when 'admin@example.com'    then can :manage,                     :all
    when 'manager@example.com'  then can [:read, :update, :destroy],  :all#[WarehouseInfo, MaterialInfo, OutWarehouseInfo, OutQuantityInfo, UseMaterialInfo]
    when 'operate@example.com'  then can [:read, :create],            :all#[WarehouseInfo, MaterialInfo, OutWarehouseInfo, OutQuantityInfo, UseMaterialInfo]
    when 'user@example.com'     then can [:read, :update],            :all#[WarehouseInfo, MaterialInfo, OutWarehouseInfo, OutQuantityInfo, UseMaterialInfo]
    else                             can  :read,                      :all
    end
  end
  #
  # can :manage, :all if user.email == 'admin@example.com'
  # can :update, :warehouse_infos if user.email == 'manager@example.com'
  # can :read, :all if user.email == 'operater@example.com'
  # can :read, :all if user.email == 'user@example.com'
  # #
  # The first argument to `can` is the action you are giving the user
  # permission to do.
  # If you pass :manage it will apply to every action. Other common actions
  # here are :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on.
  # If you pass :all it will apply to every resource. Otherwise pass a Ruby
  # class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the
  # objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, :published => true
  #
  # See the wiki for details:
  # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
end
