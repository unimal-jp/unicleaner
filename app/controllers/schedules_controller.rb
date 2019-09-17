class SchedulesController < ApplicationController
  def new
  end

  def create
    @schedule = current_user.schedules.build(schedules_params)

    if @schedule.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

    def schedules_params
      params.require(:schedule).permit(:scheduled_date)
    end
end
