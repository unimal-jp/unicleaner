class DropTablePlan < ActiveRecord::Migration[5.2]
  def change
    drop_table :plans
  end
end
