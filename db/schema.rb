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

ActiveRecord::Schema.define(:version => 20130319110736) do

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "fisrt_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "source_location"
    t.string   "destination_location"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "profile_title"
    t.string   "vehicle_type"
    t.integer  "accomodation_for"
    t.string   "gender"
    t.string   "participant"
    t.string   "organisation_name"
    t.string   "city"
    t.text     "address"
    t.string   "city_of_residence"
    t.string   "state_of_residence"
    t.integer  "pincode"
    t.string   "organisation_landmark"
    t.time     "start_time"
    t.time     "reaching_time"
    t.string   "destination_landmark"
    t.text     "description"
    t.string   "driving_licence_number"
    t.string   "issueing_state"
    t.string   "issueing_city"
    t.string   "vehicle_number_1"
    t.string   "vehicle_number_2"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
