class RemoveUserIdFormSchedule < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :user_id, :integer
  end
end
