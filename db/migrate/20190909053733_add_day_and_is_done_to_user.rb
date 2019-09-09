class AddDayAndIsDoneToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :day, :integer
    add_column :users, :isDone, :boolean
  end
end
