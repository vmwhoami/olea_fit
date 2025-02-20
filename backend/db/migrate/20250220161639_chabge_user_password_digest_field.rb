class ChabgeUserPasswordDigestField < ActiveRecord::Migration[8.0]
  def change
    change_column :sessions , :token, :string
  end
end
