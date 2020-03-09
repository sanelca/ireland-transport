class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :vehicle_id
      t.string :route_id
      t.string :point_from
      t.string :point_to
      t.string :time_start
      t.string :time_to
      t.timestamps
    end
  end
end
