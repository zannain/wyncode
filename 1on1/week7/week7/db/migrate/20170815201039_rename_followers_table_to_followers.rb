class RenameFollowersTableToFollowers < ActiveRecord::Migration[5.1]
  def change
    rename_table :followers_tables, :followers
  end
end
