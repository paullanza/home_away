class EventsController < ApplicationController
  def index
    # get the policy for all Event. like Event.all
    @events = policy_scope(Event)
    # this `geocoded` scope filters only events with coordinates (latitude & longitude)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # info window for each marker
        info_window: render_to_string(partial: "info_window", locals: { event: event })
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end

  def new
    # create a new Event so we can fill the form
    @event = Event.new
    #  authorize pundit
    authorize @event, policy_class: EventPolicy
  end

  def create
    # create a new Event so we can fill the form
    @event = Event.new(events_params)
    #  authorize pundit
    authorize @event, policy_class: EventPolicy
    # added current user to events
    @event.user = current_user

    if @event.save
      # redirect to all events if save
      redirect_to events_path
    else
      # if not render the page again
      render :new
    end
  end

  def show
    # show the specific event, if user is logged in.
    @event = Event.find(params[:id])
    authorize @event
    # do we need line 36?
    @participation = Participation.new
  end

  def my_events
    # get a scope for all mthe Events i created just like Event.all but with pundit authorization
    @my_events = policy_scope(Event).where(user: current_user)
    # All the event I participate in
    @my_participations = Participation.where(user: current_user)
  end

  private

  def events_params
    # strong params for saves, **ADDED :photo (Cloudinary)
    params.require(:event).permit(:title, :description, :category_id, :date, :location, :photo)
  end

end
