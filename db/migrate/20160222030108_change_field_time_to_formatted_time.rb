class ChangeFieldTimeToFormattedTime < ActiveRecord::Migration
  def change
    remove_column :laps, :time
    add_column :laps, :formatted_time, :float
  end
end
