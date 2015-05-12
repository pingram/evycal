class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :location_id
      t.string :title
      t.datetime :start
      t.datetime :finish
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
