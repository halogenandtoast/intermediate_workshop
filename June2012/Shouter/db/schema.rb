# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120605200217) do

  create_table "following_relationships", :force => true do |t|
    t.integer "follower_id"
    t.integer "followed_user_id"
  end

  add_index "following_relationships", ["followed_user_id"], :name => "index_following_relationships_on_followed_user_id"
  add_index "following_relationships", ["follower_id", "followed_user_id"], :name => "unique_index_for_following_relationships", :unique => true
  add_index "following_relationships", ["follower_id"], :name => "index_following_relationships_on_follower_id"

  create_table "photo_media", :force => true do |t|
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "shout_search_indices", :force => true do |t|
    t.integer "shout_id"
    t.text    "index"
  end

  create_table "shouts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "medium_type"
    t.integer  "medium_id"
  end

  add_index "shouts", ["user_id"], :name => "index_shouts_on_user_id"

  create_table "text_media", :force => true do |t|
    t.text "body"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
