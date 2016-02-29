class DropBike < ActiveRecord::Migration
  def change
    remove_column :laps, :bike
  end
end
