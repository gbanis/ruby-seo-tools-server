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

ActiveRecord::Schema.define(version: 20141217200105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audits", force: true do |t|
    t.string  "url"
    t.string  "keyword"
    t.string  "title"
    t.string  "meta_description"
    t.boolean "path_contains_keyword"
    t.boolean "path_no_underscores"
    t.boolean "title_good_length"
    t.boolean "title_contains_keyword"
    t.boolean "meta_description_good_length"
    t.boolean "meta_description_contains_keyword"
    t.text    "raw_html"
    t.text    "body_text"
    t.decimal "body_text_flesch_score",                precision: 5, scale: 2
    t.boolean "body_text_flesch_score_good"
    t.integer "body_text_num_words"
    t.integer "body_text_num_keyword_occurences"
    t.decimal "body_text_keyword_density",             precision: 5, scale: 4
    t.boolean "body_text_num_words_good"
    t.boolean "body_text_num_keyword_occurences_good"
    t.boolean "body_text_keyword_density_good"
  end

end
