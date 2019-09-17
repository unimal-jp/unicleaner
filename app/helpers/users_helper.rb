module UsersHelper

  def dates(user)
    week = []
    sunday = user.first_date_of_week
    7.times do
      week.push(sunday)
      sunday = sunday.next_day
    end
    week
  end

end
