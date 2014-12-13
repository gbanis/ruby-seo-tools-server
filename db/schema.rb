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

ActiveRecord::Schema.define(version: 20141213155400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audits", force: true do |t|
    t.string  "url"
    t.text    "page_content"
    t.string  "keyword"
    t.string  "title"
    t.string  "meta_description"
    t.boolean "path_good_length"
    t.boolean "path_contains_keyword"
    t.boolean "title_good_length"
    t.boolean "title_contains_keyword"
    t.boolean "meta_description_good_length"
    t.boolean "meta_description_contains_keyword"
  end

end
