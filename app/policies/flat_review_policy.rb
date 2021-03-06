class FlatReviewPolicy < ApplicationPolicy
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
  
end
