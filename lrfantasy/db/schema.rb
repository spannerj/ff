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

ActiveRecord::Schema.define(version: 20150903230817) do

  create_table "app_status", force: true do |t|
    t.datetime "last_refresh"
    t.boolean  "scraping"
  end

  create_table "players", force: true do |t|
    t.string "code"
    t.string "name"
    t.string "team"
    t.string "value"
    t.string "position"
  end

  add_index "players", ["code"], name: "index_players_on_code", unique: true

  create_table "scores", force: true do |t|
    t.string "code"
    t.string "week"
    t.string "opposition"
    t.string "goals"
    t.string "key_contribution"
    t.string "started_game"
    t.string "substitute_appearance"
    t.string "yellow_card"
    t.string "red_card"
    t.string "missed_penalties"
    t.string "saved_penalties"
    t.string "own_goal"
    t.string "conceeded"
    t.string "clean_sheet_full"
    t.string "clean_sheet_part"
    t.string "points"
  end

  add_index "scores", ["code"], name: "index_scores_on_code"

end