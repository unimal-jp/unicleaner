module SchedulesHelper
  def options(users)
    options_for_select = []
    users.each do |user|
      options_for_select.push([user.name, user.id])
    end
    options_for_select
  end
end
