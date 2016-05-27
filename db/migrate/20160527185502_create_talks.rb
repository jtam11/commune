class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :location
      t.date :date
      t.time :time
      t.integer :spots

      t.timestamps null: false
    end
  end
end
