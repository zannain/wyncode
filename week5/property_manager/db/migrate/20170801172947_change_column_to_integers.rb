class ChangeColumnToIntegers < ActiveRecord::Migration[5.1]
  def change
  change_column :properties, :rent, :integer
end
end
