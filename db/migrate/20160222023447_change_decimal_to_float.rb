class ChangeDecimalToFloat < ActiveRecord::Migration
  def change
    change_table :laps do |lap|
      lap.change :time, :float
    end
  end
end
