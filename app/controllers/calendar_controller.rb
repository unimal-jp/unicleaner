class CalendarController < ApplicationController
  def index
    @today = Date.today
    @year = params[:year].to_i
    @month = params[:month].to_i
    @users = User.all

    if !@year || !@month
      @year = @today.year
      @month = @today.month
    end
      dates = []

      first_date_of_month = Date.new(@year, @month, 1)

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
  end
end
