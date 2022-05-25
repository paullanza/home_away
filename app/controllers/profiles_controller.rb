class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user, policy_class: ProfilePolicy
    user1 = current_user
    @user2 = User.find(params[:id])
    @chatroom = Chatroom.find_by("(user1_id = ? and user2_id = ?) or (user1_id = ? and user2_id =?)", user1, @user2, @user2, user1)
    @chatroom_new = Chatroom.new
  end

  def edit
    # authorize @user
  end

  def update
  end
end
