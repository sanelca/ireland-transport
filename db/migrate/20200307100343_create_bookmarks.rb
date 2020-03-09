class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :route_id
      t.timestamps
    end
  end
end
