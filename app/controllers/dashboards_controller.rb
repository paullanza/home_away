class DashboardsController < ApplicationController
  def dashboard
    # Find all the User with the same country of origin and residence as current_user
    if params[:expertise_id].present?
      @profiles = User.joins(:expertises).where("(origin = ? and residence = ?) and expertises.id = ?", current_user.origin, current_user.residence, params[:expertise_id])
    else
      @profiles = User.where("origin = ? and residence = ?", current_user.origin, current_user.residence)
    end
    # remove current_user from the array so it do not appear on the dashboard
    # @profiles -= [current_user]

    # find all events in my country of residence
    if params[:category_id].present?
      @events = Event.joins(:user).joins(:category).where("(location = ? and origin = ?) and categories.id = ?", current_user.residence, current_user.origin, params[:category_id])
    else
      @events = Event.joins(:user).where("location = ? and origin = ?", current_user.residence, current_user.origin)
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # info window for each marker
        info_window: render_to_string(partial: "info_window", locals: { event: event })
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end

    @my_chat = Chatroom.where('user1_id = ? or user2_id = ?', current_user, current_user)

    @new_chatroom = Chatroom.new
  end
end
