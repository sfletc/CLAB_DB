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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140227063951) do

  create_table "oligos", force: true do |t|
    t.string   "oligo_no"
    t.string   "name"
    t.string   "sequence"
    t.string   "tm"
    t.string   "descrip"
    t.string   "designer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "plasmids", force: true do |t|
    t.string   "vec_backbone"
    t.string   "insert"
    t.string   "puqc"
    t.string   "descrip"
    t.string   "designer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "gbk_file_name"
    t.string   "gbk_content_type"
    t.integer  "gbk_file_size"
    t.datetime "gbk_updated_at"
    t.string   "gbkcw"
    t.integer  "ligation"
  end

  create_table "seeds", force: true do |t|
    t.string   "tube_no"
    t.string   "seed_col_date"
    t.string   "par_tube"
    t.string   "genotype"
    t.string   "descrip"
    t.string   "sourced_by"
    t.string   "GMO"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "simple_captcha_data", force: true do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
