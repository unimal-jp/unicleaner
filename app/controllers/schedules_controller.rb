class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedules_params)

    if @schedule.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

    def schedules_params
      params.require(:schedule).permit(:scheduled_date)
    end
end
