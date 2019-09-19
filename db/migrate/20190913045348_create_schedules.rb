class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :first_date_of_week
      t.integer :user_id
      t.date :scheduled_date
      t.boolean :status, null: false, default: false
    end
  end
end
