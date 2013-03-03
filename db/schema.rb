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

ActiveRecord::Schema.define(:version => 20130303000326) do

  create_table "events", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "description"
    t.string   "content_type"
    t.string   "filename"
    t.binary   "binary_data"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.integer  "age"
    t.string   "orientation"
    t.string   "religion"
    t.string   "gender"
    t.string   "event_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "hobbies"
    t.text     "profile"
    t.string   "password_digest"
    t.boolean  "visible"
  end

  create_table "visibles", :force => true do |t|
    t.integer  "hidden_user"
    t.integer  "user_of_interest"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
