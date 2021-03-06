class ParticipationsController < ApplicationController

  def create
    # create a new participation,
    @participation = Participation.new
    # find the current event,
    @event = Event.find(params[:event_id])
    # add the event to the participation,
    @participation.event = @event
    # pundit policy to create the participation true if...
    authorize @participation, policy_class: ParticipationPolicy
    # current user is allowed, added to the participation,
    @participation.user = current_user
    # save the participation
    @participation.save
    # go back to the event showpage
    redirect_to event_path(@event)
  end

  def destroy
    # find the participation and authorize it
    @participation = Participation.find(params[:id])
    authorize @participation, policy_class: ParticipationPolicy

    # destroy participation
    @participation.destroy

    redirect_to my_events_path
  end
end
