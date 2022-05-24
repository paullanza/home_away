class EventsController < ApplicationController
  def index
    # get the policy for all Event. like Event.all
    @events = policy_scope(Event)
    authorize @events
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end
end
