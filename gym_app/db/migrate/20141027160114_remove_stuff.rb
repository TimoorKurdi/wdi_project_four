class RemoveStuff < ActiveRecord::Migration
  def change
     remove_column :users, :latitude
     remove_column :users, :longitude
     remove_column :users, :address
  end
end
