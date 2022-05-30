class DashboardsController < ApplicationController
  def dashboard
    # Find all the User with the same country of origin and residence as current_user
    if params[:expertise_id].present?
      # if query search by query
      @profiles = User.joins(:expertises).where("(origin = ? and residence = ?) and expertises.id = ?", current_user.origin, current_user.residence, params[:expertise_id])
    else
      # if not query search only by origin and residence
      @profiles = User.where("origin = ? and residence = ?", current_user.origin, current_user.residence)
    end

    # remove current user from the array
    @profiles -= [current_user]

    # find all events in my country of residence
    if params[:category_id].present?
      # if query search by category
      @events = Event.joins(:user).joins(:category).where("(location = ? and origin = ?) and categories.id = ?", current_user.residence, current_user.origin, params[:category_id])
    else
      @events = Event.joins(:user).where("location = ? and origin = ?", current_user.residence, current_user.origin)
    end

    # for the marker to appear no the map
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # info window for each marker
        info_window: render_to_string(partial: "info_window", locals: { event: event })
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
    # create new chat if chatroom not found in dashboard.html
    @new_chatroom = Chatroom.new
  end
end
