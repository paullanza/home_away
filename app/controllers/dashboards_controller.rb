class DashboardsController < ApplicationController
  def dashboard
    # Find all the User with the same country of origin and residence as current_user
    @profiles = User.where("origin = ? and residence = ?", current_user.origin, current_user.residence)
    # remove current_user from the array so it do not appear on the dashboard
    @profiles -= [current_user]

    # find all events in my country of residence
    @events = Event.joins(:user).where("location = ? and origin = ? ", current_user.residence, current_user.origin)
  end
end
