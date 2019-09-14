class SchedulesController < ApplicationController
  def index
    @today = Date.today
    first_date_of_month = Date.new(@today.year, @today.month, 1)

    dates = []

    first_date_of_month.wday.downto(1) do |i|
      dates.push(first_date_of_month - i)
    end

    (0..31).each do |i|
      date = first_date_of_month + i
      break unless date.month == first_date_of_month.month
      dates.push(date)
    end
    @weeks = dates.each_slice(7).to_a

    last_date_of_month = @weeks[-1][-1]

    unless last_date_of_month.saturday?
      until @weeks[-1][-1].saturday?
        last_date_of_month = @weeks[-1][-1]
        next_day = last_date_of_month.next_day
        @weeks[-1].push(next_day)
      end
    end

    @users = User.all
  end

  def create
    schedule = Schedule.new(schedule_params)
    if schedule.save
      redirect_to root_url
    end
  end

  def edit
  end

  def update
    schedule = Schedule.find(params[:id])
    if schedule.update(schedule_params)
      redirect_to root_url
    end
  end

  private

    def schedule_params
      params.require(:schedule).permit(:user_id, :first_date_of_week, :scheduled_date)
    end
end
