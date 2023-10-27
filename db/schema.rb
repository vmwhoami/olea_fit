# frozen_string_literal: true

# 
ActiveRecord::Schema[7.1].define(version: 20_201_030_073_711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'followings', force: :cascade do |t|
    t.integer 'follower_id'
    t.integer 'followed_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[follower_id followed_id], name: 'index_followings_on_follower_id_and_followed_id', unique: true
  end

  create_table 'likes', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'opinion_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[user_id opinion_id], name: 'index_likes_on_user_id_and_opinion_id', unique: true
  end

  create_table 'opinions', force: :cascade do |t|
    t.bigint 'author_id', null: false
    t.text 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_opinions_on_author_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'fullname'
    t.text 'photo'
    t.text 'coverimage'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['username'], name: 'index_users_on_username', unique: true
  end

  add_foreign_key 'opinions', 'users', column: 'author_id'
end
