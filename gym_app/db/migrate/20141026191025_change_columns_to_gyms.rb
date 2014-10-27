class ChangeColumnsToGyms < ActiveRecord::Migration
  def change
   change_column :gyms, :latitude, :float
   change_column :gyms, :longitude, :float
  end
end
