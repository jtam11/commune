class TalksController < ApplicationController
  before_action :set_talk, :except => [:index, :new, :create]

  def index
    @talks = Talk.all
  end

  def show
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.user_id = current_user.id
    if @talk.save
      redirect_to talk_path(@talk)
    else
      render :new
    end
  end

  def edit
  end

  def udpate
  end

  def destroy
  end

private

  def talk_params
    params.require(:talk).permit(:title, :location, :date, :start_time, :end_time, :spots, :description, :picture, :user_id)
  end

  def set_talk
    @talk = Talk.find(params[:id])
  end

end
