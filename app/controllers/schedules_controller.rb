class SchedulesController < ApplicationController
  def index
    today = Date.today
    first_date_of_month = Date.new(today.year, today.month, 1)

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
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
  end

  private

    def schedule_params
      params.require(:schedules).permit(:year, :month, :week, :day, :status)
    end
end
