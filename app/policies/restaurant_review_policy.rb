class RestaurantReviewPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        if user.admin?
          scope.all #Trip.all
        else
          scope.where(user: user)
        end
      end
    end
  
    def create?
      true
    end

    private

    def user_is_owner_or_admin?
      record.user == user || user.admin?
    end
  
end