class EventsController < ApplicationController
  def index
    # get the policy for all Event. like Event.all
    @events = policy_scope(Event)
    authorize @events, policy_class: EventPolicy
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
  end

  private

  def events_params
    # strong params for saves
    params.require(:event).permit(:title, :description, :category_id, :date, :location)
  end
end
