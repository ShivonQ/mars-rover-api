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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170314190403) do

  create_table "fave_imgs", force: :cascade do |t|
    t.string   "rover"
    t.string   "cam_name"
    t.string   "image_date"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_fave_imgs_on_user_id"
  end

  create_table "rover_manifests", force: :cascade do |t|
    t.string   "name"
    t.string   "landing_date"
    t.string   "launch_date"
    t.string   "status"
    t.integer  "max_sol"
    t.string   "max_date"
    t.string   "portrait"
    t.integer  "total_photos"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
