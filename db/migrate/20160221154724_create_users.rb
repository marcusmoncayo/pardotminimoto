class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.decimal :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
