class SchedulesController < ApplicationController
  def new
    @schedule = current_user.schedules.build
  end

  def create
    @schedule = current_user.schedules.build(schedules_params)

    if @schedule.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedules_params)
      redirect_to user_path(current_user)
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to user_path(current_user)
  end

  private

    def schedules_params
      params.require(:schedule).permit(:scheduled_date)
    end
end
