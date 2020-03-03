class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_name
      t.string :registration_number
      t.string :number_of_seats
      t.timestamps
    end
  end
end
