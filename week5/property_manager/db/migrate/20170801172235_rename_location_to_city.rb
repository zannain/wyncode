class RenameLocationToCity < ActiveRecord::Migration[5.1]
  def change
    rename_column :properties, :location, :city
  end
end
