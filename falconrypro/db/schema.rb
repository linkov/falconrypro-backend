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

ActiveRecord::Schema.define(version: 20170612093310) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "bird_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "latin",      limit: 255
    t.integer  "group_id",   limit: 4
    t.boolean  "popular",                default: false
    t.integer  "order",      limit: 4,   default: 3000
  end

  add_index "bird_types", ["group_id"], name: "index_bird_types_on_group_id", using: :btree

  create_table "bird_types_birds", id: false, force: :cascade do |t|
    t.integer "bird_type_id", limit: 4, null: false
    t.integer "bird_id",      limit: 4, null: false
  end

  create_table "birds", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.boolean  "sex"
    t.string   "code",           limit: 255
    t.date     "birthday"
    t.integer  "fat_weight",     limit: 4
    t.integer  "hunting_weight", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "birdimage",      limit: 255
    t.string   "name",           limit: 255
    t.date     "dead"
    t.date     "sold"
    t.date     "deleted"
  end

  add_index "birds", ["user_id"], name: "index_birds_on_user_id", using: :btree

  create_table "diary_foods", force: :cascade do |t|
    t.integer  "food_id",       limit: 4
    t.integer  "eaten",         limit: 4
    t.time     "time"
    t.integer  "diary_item_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "diary_foods", ["diary_item_id"], name: "index_diary_foods_on_diary_item_id", using: :btree
  add_index "diary_foods", ["food_id"], name: "index_diary_foods_on_food_id", using: :btree

  create_table "diary_items", force: :cascade do |t|
    t.text     "note",         limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "bird_id",      limit: 4
    t.integer  "season_id",    limit: 4
    t.datetime "created_date"
  end

  add_index "diary_items", ["bird_id"], name: "index_diary_items_on_bird_id", using: :btree
  add_index "diary_items", ["season_id"], name: "index_diary_items_on_season_id", using: :btree

  create_table "diary_items_quarry_types", id: false, force: :cascade do |t|
    t.integer "quarry_type_id", limit: 4, null: false
    t.integer "diary_item_id",  limit: 4, null: false
  end

  create_table "diary_weights", force: :cascade do |t|
    t.integer  "weight",        limit: 4
    t.time     "time"
    t.integer  "diary_item_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "diary_weights", ["diary_item_id"], name: "index_diary_weights_on_diary_item_id", using: :btree

  create_table "food_groups", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "food_group_id", limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "popular",                   default: false
  end

  add_index "foods", ["food_group_id"], name: "index_foods_on_food_group_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pin_item_types", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pin_items", force: :cascade do |t|
    t.decimal  "lat",                            precision: 10, scale: 6
    t.decimal  "long",                           precision: 10, scale: 6
    t.integer  "diary_item_id",    limit: 4
    t.integer  "pin_item_type_id", limit: 4
    t.text     "note",             limit: 65535
    t.string   "photo",            limit: 255
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  add_index "pin_items", ["diary_item_id"], name: "index_pin_items_on_diary_item_id", using: :btree
  add_index "pin_items", ["pin_item_type_id"], name: "index_pin_items_on_pin_item_type_id", using: :btree

  create_table "quarry_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "quarry_types", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "quarry_group_id", limit: 4
  end

  add_index "quarry_types", ["quarry_group_id"], name: "index_quarry_types_on_quarry_group_id", using: :btree

  create_table "seasons", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.boolean  "between"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "bird_id",    limit: 4
    t.date     "deleted"
  end

  add_index "seasons", ["bird_id"], name: "index_seasons_on_bird_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",               limit: 255,   default: "email", null: false
    t.string   "uid",                    limit: 255,   default: "",      null: false
    t.string   "encrypted_password",     limit: 255,   default: "",      null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "nickname",               limit: 255
    t.string   "image",                  limit: 255
    t.string   "email",                  limit: 255
    t.text     "tokens",                 limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "bird_types", "groups"
  add_foreign_key "birds", "users"
  add_foreign_key "diary_foods", "diary_items"
  add_foreign_key "diary_foods", "foods"
  add_foreign_key "diary_items", "birds"
  add_foreign_key "diary_items", "seasons"
  add_foreign_key "diary_weights", "diary_items"
  add_foreign_key "foods", "food_groups"
  add_foreign_key "pin_items", "diary_items"
  add_foreign_key "pin_items", "pin_item_types"
  add_foreign_key "quarry_types", "quarry_groups"
  add_foreign_key "seasons", "birds"
end
