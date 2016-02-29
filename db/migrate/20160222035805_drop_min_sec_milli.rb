class DropMinSecMilli < ActiveRecord::Migration
  def change
    remove_column :laps, :minutes
    remove_column :laps, :seconds
    remove_column :laps, :milliseconds
  end
end
