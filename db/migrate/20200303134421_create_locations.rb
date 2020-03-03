class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :location_place
      t.string :city
      t.string :location_register
      t.string :location_address
      t.string :longitude
      t.string :latitude
      t.timestamps
    end
  end
end
