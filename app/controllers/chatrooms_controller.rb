class ChatroomsController < ApplicationController
  def show
    # create a new message to send
    @message = Message.new
    # find a chatroom
    @chatroom = Chatroom.find(params[:id])
    @all_my_chatrooms = Chatroom.where("user1_id = ? or user2_id = ?", current_user, current_user).order(updated_at: :desc)
    # @all_my_chatrooms = current_user.chatrooms
    # authorize it
    authorize @chatroom, policy_class: ChatroomPolicy
  end

  def create
    # create a new chatroom with the strong params and authorize it
    @chatroom = Chatroom.new(chatrooms_params)
    authorize @chatroom, policy_class: ChatroomPolicy

    # assignt current_user as user 1
    @chatroom.user1 = current_user

    # if @chatroom saves. redirect to the chatroom
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end

  private

  def chatrooms_params
    params.require(:chatroom).permit(:name, :user2_id)
  end
end
