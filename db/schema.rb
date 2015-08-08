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

ActiveRecord::Schema.define(version: 20150805014048) do

  create_table "allies", force: :cascade do |t|
    t.integer  "school_id",  limit: 4, null: false
    t.integer  "ally_id",    limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "apprentices", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "move",       limit: 4
    t.integer  "fight",      limit: 4
    t.integer  "shoot",      limit: 4
    t.integer  "armor",      limit: 4
    t.integer  "will",       limit: 4
    t.integer  "health",     limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "armors", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "character_types", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "character_type_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "character_type_id", limit: 4
    t.integer  "school_id",         limit: 4
    t.string   "name",              limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "fights", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "healths", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "price",       limit: 4
    t.text     "description", limit: 65535
    t.integer  "damage",      limit: 4
    t.string   "item_type",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "moves", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "neutrals", force: :cascade do |t|
    t.integer  "school_id",  limit: 4, null: false
    t.integer  "neutral_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "opposeds", force: :cascade do |t|
    t.integer  "school_id",  limit: 4, null: false
    t.integer  "opposed_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shoots", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "spells", force: :cascade do |t|
    t.integer  "name",          limit: 4,     null: false
    t.integer  "school_id",     limit: 4,     null: false
    t.string   "range",         limit: 255,   null: false
    t.text     "description",   limit: 65535
    t.integer  "casting_value", limit: 4,     null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "willpowers", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "value",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
