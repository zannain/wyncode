class RenameCommentNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :post, :body
  end
end
