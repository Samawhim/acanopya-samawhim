class TripPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      if user.admin?
        scope.all #Trip.all
      else
        scope.where(user: user)
      end
    end
  end 

  def new?
    create?
  end

  def show?
    user_is_owner_or_admin?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin?
  end

end
