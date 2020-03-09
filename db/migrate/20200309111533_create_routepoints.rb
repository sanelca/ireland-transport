class CreateRoutepoints < ActiveRecord::Migration[5.2]
  def change
    create_table :routepoints do |t|
      t.string :route_id
      t.string :location_id
      t.timestamps
    end
  end
end
