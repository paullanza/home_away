class EventsController < ApplicationController
  def index
    # get the policy for all Event. like Event.all
    @events = policy_scope(Event)
    authorize @events, policy_class: EventPolicy
  end

  def new
    @event = Event.new
    authorize @event, policy_class: EventPolicy
  end

  def create
    @event = Event.new(events_params)
    authorize @event, policy_class: EventPolicy
    @event.user = current_user

    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  private

  def events_params
    params.require(:event).permit(:title, :description, :category_id, :date, :location)
  end
end
