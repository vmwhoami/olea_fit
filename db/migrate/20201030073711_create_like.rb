# frozen_string_literal: true

class CreateLike < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :opinion_id

      t.timestamps
    end
    add_index :likes, %i[user_id opinion_id], unique: true
  end
end
