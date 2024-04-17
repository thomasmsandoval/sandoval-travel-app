class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.integer :trip_id
      t.text :address
      t.text :name
      t.text :description
      t.text :image_url
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
