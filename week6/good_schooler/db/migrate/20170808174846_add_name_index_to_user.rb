class AddNameIndexToUser < ActiveRecord::Migration[5.1]
  def change
    # add_column :users, :name, :string
    add_index :users, :name
  end
end
