class ClockEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clock_event, only: [:edit, :update, :destroy]
  before_action :set_form_selection, only: [:new, :create, :edit, :update]

  def index
    unless current_user.admin?
      @clock_events = current_user.clock_events.order(clock_time: :desc).includes(:clock_event_type)
    else
      @clock_events = ClockEvent.all.order(clock_time: :desc).includes(:user, :clock_event_type)
    end
  end

  def new
    @clock_event = ClockEvent.new
  end

  def edit
  end

  def create
    @clock_event = ClockEvent.new(clock_event_params)
    
    respond_to do |format|
      if @clock_event.save
        format.html { redirect_to root_path, notice: "#{@clock_event.clock_event_type.name} successfully!" }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @clock_event.update(clock_event_params)
        format.html { redirect_to root_path, notice: 'Update Event successfully!' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @clock_event.destroy
    respond_to do |format|
      format.html { redirect_to clock_events_url, notice: 'Delete Event Successfully!' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock_event
      @clock_event = ClockEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clock_event_params
      params.require(:clock_event).permit(:user_id, :clock_event_type_id, :clock_time)
    end

    def set_form_selection
      @user_for_select = User.not_admin.order(:first_name)
      @event_type_for_select = ClockEventType.all
    end
end
