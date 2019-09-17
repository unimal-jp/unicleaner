module SchedulesHelper

  def option(user)
    dates = [['Sun'], ['Mon'], ['Tue'], ['Wed'], ['Thu'], ['Fri'], ['Sat']]
    sunday = user.first_date_of_week
    dates.each do |date|
      date.push(sunday)
      sunday = sunday.next_day
    end
  end

end
