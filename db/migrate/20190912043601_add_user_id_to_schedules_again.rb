class AddUserIdToSchedulesAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :user_id, :integer
  end
end
