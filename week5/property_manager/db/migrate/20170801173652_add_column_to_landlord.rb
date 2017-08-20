class AddColumnToLandlord < ActiveRecord::Migration[5.1]
  def change
    add_column :landlords, :name, :string
  end
end
