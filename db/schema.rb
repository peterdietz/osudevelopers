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

ActiveRecord::Schema.define(:version => 20130322035341) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "team_id"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "applications_technologies", :id => false, :force => true do |t|
    t.integer "application_id", :null => false
    t.integer "technology_id",  :null => false
  end

  add_index "applications_technologies", ["application_id", "technology_id"], :name => "index_applications_technologies", :unique => true

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "developers", :force => true do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "username"
    t.integer  "team_id"
    t.string   "github_username"
    t.string   "twitter_username"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "technologies", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
