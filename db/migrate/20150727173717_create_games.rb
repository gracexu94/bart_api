class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :min
      t.integer :max
      t.string :turkID
      t.boolean :SLA
      t.boolean :avg
      t.boolean :norm
      t.datetime :timestart
      t.datetime :timefinish
      t.float :duration
      t.integer :seed
      t.string :playerID
      t.integer :gamenumber
      t.string :scoreramp
      t.integer :limits, array: true, default: []
      t.integer :pushes, array: true, default: []
      t.boolean :cashed, array: true, default: []

      t.timestamps null: false
    end
  end
end
