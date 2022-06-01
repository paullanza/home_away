class ProfilesController < ApplicationController
  def show
    # find the user profile and authorize it
    @user = User.find(params[:id])
    authorize @user, policy_class: ProfilePolicy
    # make user1 be the current user and user 2 be the profile id
    user1 = current_user
    @user2 = User.find(params[:id])
    # find the chatroom where user 1 and 2 are connected
    @chatroom = Chatroom.find_by("(user1_id = ? and user2_id = ?) or (user1_id = ? and user2_id =?)", user1, @user2, @user2, user1)
    # create a new chatroom in case we dont have a chatroom and we need to create one
    @chatroom_new = Chatroom.new
    @expertises = UsersExpertise.where(user: @user)
  end
end
