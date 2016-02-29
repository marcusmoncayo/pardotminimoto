class AddBikeReferenceToLap < ActiveRecord::Migration
  def change
    add_reference :laps, :bike, index: true, foreign_key: true
  end
end
