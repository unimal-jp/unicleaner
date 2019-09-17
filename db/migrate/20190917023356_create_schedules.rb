class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.date :scheduled_date

      t.timestamps
    end
  end
end
