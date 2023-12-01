class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'Event created successfully!'
      redirect_to @event
    else
      render 'new'  
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    if @event.update(event_params)
      flash[:success] = 'Event updated successfully!'
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    flash[:success] = 'Event deleted successfully!'
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(
      :title, :description, :event_type, :start_time, :end_time,
      :capacity, :public, :account_id, :event_date, :latitude,
      :longitude, :location, :notify, :repeat, :notes, :address, :image
    )
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
