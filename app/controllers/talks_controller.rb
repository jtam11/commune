class TalksController < ApplicationController
  before_action :set_talk, :except => [:index, :new, :create]

  def index
    if params[:search]
      @talks = Talk.upcoming.search(params[:search]).order("date asc", "start_time asc")
    elsif params[:tag]
      @talks = Talk.tagged_with(params[:tag])
    else
      @talks = Talk.upcoming.order("date asc", "start_time asc")
    end
  end

  def show
  end

  def new
    @talk = current_user.talks.build
  end

  def create
    @talk = current_user.talks.build(talk_params)
    if @talk.save
      flash[:success] = "Successfully created talk"
      redirect_to talk_path(@talk)
    else
      flash[:error] = @talk.errrors.full_message.to_sentence
      render :new
    end
  end

  def edit
  end

  def update
    if @talk.host_id == current_user.id
      if @talk.update(talk_params)
        flash[:success] = "Successfully updated talk"
        redirect_to talk_path(@talk)
      else
        flash[:error] = @talk.errrors.full_message.to_sentence
        render :edit
      end
    end
  end

  def destroy
    if @talk.host_id == current_user.id
      if @talk.destroy
        flash[:success] = "Successfully deleted talk"
        redirect_to talks_path
      else
        flash[:error] = @talk.errrors.full_message.to_sentence
      end
    else
      redirect_to root_path
    end
  end

private

  def talk_params
    params.require(:talk).permit(:title, :location, :date, :start_time, :end_time, :spots, :description, :picture, :host_id, :all_tags)
  end

  def set_talk
    @talk = Talk.find(params[:id])
  end

end
