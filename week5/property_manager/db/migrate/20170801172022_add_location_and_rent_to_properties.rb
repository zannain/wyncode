class AddLocationAndRentToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :location, :string
    add_column :properties, :rent, :string
  end

end
