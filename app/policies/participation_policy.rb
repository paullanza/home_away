class ParticipationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  # changed new to *create*, since we will not create a view to join the event.
  def create?
    true
  end

  def destroy?
    true
  end
end
