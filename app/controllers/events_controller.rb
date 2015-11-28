class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @events = Event.where(availability: true)
    respond_with(@events)
  end

  def show
    respond_with(@event)
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
    authorize! :manage, @event
  end

  def create
    @event = current_user.events.new(event_params)
    @event.save
    respond_with(@event)
  end

  def update
    authorize! :manage, @event
    @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    authorize! :manage, @event
    @event.destroy
    respond_with(@event)
  end

  private
    def set_event
      @event = Event.friendly.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description, :category, :date_time, :address, :guest, :price, :availability)
    end

end
