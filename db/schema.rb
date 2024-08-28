# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_030_073_711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'followings', force: :cascade do |t|
    t.integer 'follower_id'
    t.integer 'followed_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[follower_id followed_id], name: 'index_followings_on_follower_id_and_followed_id', unique: true
  end

  create_table 'likes', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'opinion_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[user_id opinion_id], name: 'index_likes_on_user_id_and_opinion_id', unique: true
  end

  create_table 'opinions', force: :cascade do |t|
    t.bigint 'author_id', null: false
    t.text 'text'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['author_id'], name: 'index_opinions_on_author_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'fullname'
    t.text 'photo'
    t.text 'coverimage'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['username'], name: 'index_users_on_username', unique: true
  end

  add_foreign_key 'opinions', 'users', column: 'author_id'
end
