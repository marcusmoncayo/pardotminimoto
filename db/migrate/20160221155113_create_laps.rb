class CreateLaps < ActiveRecord::Migration
  def change
    create_table :laps do |t|
      t.decimal :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
