class CreateDriveroutes < ActiveRecord::Migration[5.2]
  def change
    create_table :driveroutes do |t|
      t.string :route_name
      t.string :location_from
      t.string :location_to
      t.string :start_time
      t.string :end_time
      t.string :vehicle
      t.timestamps
    end
  end
end
