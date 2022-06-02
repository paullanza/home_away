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
    # need the location of the user same as the event
    @event.location = current_user.residence

    if @event.save
      @participation = Participation.new
      @participation.user = current_user
      @participation.event = @event
      @participation.save
      # redirect to all events if save
      redirect_to event_path(@event)
    else
      # if not render the page again
      render :new
    end
  end

  def show
    # show the specific event, if user is logged in.
    @event = Event.find(params[:id])
    authorize @event
    @participation = Participation.new

    # find our participation if we have one
    @my_participation = Participation.find_by("user_id = ? and event_id = ? ", current_user, @event)
    @participations = Participation.where(event: @event)

    @markers = @event.geocode.map do
      {
        lat: @event.latitude,
        lng: @event.longitude,
        # info window for each marker
        # info_window: render_to_string(partial: "info_window", locals: { event: @event }),
        image_url: helpers.asset_url("Paper Plane_8")
      }
    end
  end

  def my_events
    # Paul: Policy to get all events, filtered by current user
    @my_events = policy_scope(Event).where(user: current_user)
    # Paul: @participations is an array to get just the events from participations
    @participations = current_user.participation_events
    # Paul: Geocoding the events the current user has created
    @events_markers = @my_events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # info window for each marker
        info_window: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url("Paper Plane_8 (1)")
      }
    end
    # Paul: Gecoding the events the current user is attending
    @participations_markers = @participations.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # info window for each marker
        info_window: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url("Paper Plane_8")
      }
    end
  end

  # Jose added the destroy method bellow
  def destroy
    @event = Event.find(params[:id])
    authorize @event, policy_class: EventPolicy
    # destroy only if the user is the one who created the event
    @event.destroy

    redirect_to my_events_path
  end

  def edit
    # finding the correct @event time and authorize it
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    # finding the correct @event time and authorize it
    @event = Event.find(params[:id])
    authorize @event
    # if correctly updated, go to the event page, otherwise render the page
    if @event.update(events_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  private

  def events_params
    # strong params for saves, **ADDED :photo (Cloudinary)
    params.require(:event).permit(:title, :description, :category_id, :date, :location, :address, :starting_time, :ending_time, :photo)
  end
end
