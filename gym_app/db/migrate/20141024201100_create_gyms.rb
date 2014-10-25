class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :type
      t.integer :price
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
