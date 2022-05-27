class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  end
end
