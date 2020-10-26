class RenameUserToAuthor < ActiveRecord::Migration[6.0]
  def change
    rename_column :opinions, :user_id, :author_id
  end
end
