class AddMinutesSecondsMilliseconds < ActiveRecord::Migration
  def change
    add_column :laps, :minutes, :integer
    add_column :laps, :seconds, :integer
    add_column :laps, :milliseconds, :integer
    add_column :laps, :bike, :integer 
  end
end
