class ChatroomsController < ApplicationController
  def show
    @message = Message.new
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom, policy_class: ChatroomPolicy
  end

  def create
    @chatroom = Chatroom.new(chatrooms_params)
    authorize @chatroom, policy_class: ChatroomPolicy

    @chatroom.user1 = current_user

    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      raise
      redirect_to root_path
    end
  end

  private

  def chatrooms_params
    params.require(:chatroom).permit(:name, :user2_id)
  end
end
