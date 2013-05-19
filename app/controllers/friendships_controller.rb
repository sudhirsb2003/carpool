 class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "your request has been sent to #{@friendship.friend.profile.full_name} "
      redirect_to root_url
    else
      flash[:error] = "Your request to #{@friendship.friend.profile.full_name} has already been send."
      redirect_to root_url
    end
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to current_user
  end

  def accept 
    @profile = Friendship.find(params[:profile_id])
    @profile.approve!
    if @profile.save
      @update_accomodation_number = current_user.profile.update_attributes(:accomodation_for => (current_user.profile.accomodation_for)-1)
    redirect_to profile_path(current_user.profile), :notice => "#{@profile.friend.profile.full_name} has been approved"
    end 
  end

  def reject 

  end 



end
