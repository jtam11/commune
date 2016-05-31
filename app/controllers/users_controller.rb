class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @talks = @user.talks.all.order("date asc", "start_time asc ")
  end

end
