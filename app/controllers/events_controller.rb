class EventsController < ApplicationController
  def index
    # get the policy for all Event. like Event.all
    @events = policy_scope(Event)
    authorize @events
  end

  def show
    # show the specific event, if user is logged in.
    @event = Event.find(params[:id])
    authorize @event
  end
end
