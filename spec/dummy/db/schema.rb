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

ActiveRecord::Schema.define(:version => 20120401133633) do

  create_table "jpp_customercode_transfer_zip_code_lists", :force => true do |t|
    t.integer  "union_code"
    t.string   "zipcode5"
    t.string   "zipcode"
    t.string   "prefectrure_name_kana"
    t.string   "city_name_kana"
    t.string   "region_name_kana"
    t.string   "prefecture_name"
    t.string   "city_name"
    t.string   "region_name"
    t.integer  "flag10"
    t.integer  "flag11"
    t.integer  "flag12"
    t.integer  "flag13"
    t.integer  "flag14"
    t.integer  "update_flag"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
