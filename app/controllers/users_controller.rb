class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # grabbing all of the user's talk history (Not too DRY. Will refactor)
    @upcoming_hosted = @user.upcoming_hosted.order("date asc", "start_time asc")
    @upcoming_attended = @user.upcoming_attended.order("date asc", "start_time asc")
    @previous_hosted = @user.previous_hosted.order("date asc", "start_time asc")
    @previous_attended = @user.previous_attended.order("date asc", "start_time asc")
  end

end
