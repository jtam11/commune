class InvitesController < ApplicationController

  def create
    @talk = Talk.find(params[:invite][:attended_talk_id])
    current_user.attend!(@talk)
    redirect_to @talk
  end

  def destroy
    @talk = Invite.find(params[:id]).attended_talk
    current_user.cancel!(@talk)
    redirect_to @talk
  end

end
