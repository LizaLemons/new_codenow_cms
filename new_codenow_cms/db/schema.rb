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

ActiveRecord::Schema.define(version: 20150302015546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "home_phone"
    t.string  "cell_phone"
    t.text    "street_addresss_1"
    t.text    "street_addresss_2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "country"
    t.date    "birthdate"
    t.string  "gender"
    t.string  "school"
    t.text    "additional_info"
    t.integer "workshop_id"
    t.integer "user_id"
  end

  create_table "application_questions", force: :cascade do |t|
    t.text    "question"
    t.string  "question_type"
    t.integer "num_options"
    t.text    "question_options"
  end

  create_table "application_questions_applications", id: false, force: :cascade do |t|
    t.integer "application_id",          null: false
    t.integer "application_question_id", null: false
  end

  add_index "application_questions_applications", ["application_id", "application_question_id"], name: "index_application_questions_applications_on_application_id_and", unique: true, using: :btree
  add_index "application_questions_applications", ["application_question_id", "application_id"], name: "index_applications_application_questions_on_application_questi", unique: true, using: :btree

  create_table "applications", force: :cascade do |t|
    t.string "application_name"
    t.string "application_type"
    t.string "application_location"
  end

  create_table "partners", force: :cascade do |t|
    t.string "partner_name"
  end

  create_table "partners_workshops", id: false, force: :cascade do |t|
    t.integer "workshop_id", null: false
    t.integer "partner_id",  null: false
  end

  add_index "partners_workshops", ["partner_id", "workshop_id"], name: "index_partners_workshops_on_partner_id_and_workshop_id", using: :btree
  add_index "partners_workshops", ["workshop_id", "partner_id"], name: "index_partners_workshops_on_workshop_id_and_partner_id", using: :btree

  create_table "sponsors", force: :cascade do |t|
    t.string "sponsor_name"
  end

  create_table "sponsors_workshops", id: false, force: :cascade do |t|
    t.integer "workshop_id", null: false
    t.integer "sponsor_id",  null: false
  end

  add_index "sponsors_workshops", ["sponsor_id", "workshop_id"], name: "index_sponsors_workshops_on_sponsor_id_and_workshop_id", using: :btree
  add_index "sponsors_workshops", ["workshop_id", "sponsor_id"], name: "index_sponsors_workshops_on_workshop_id_and_sponsor_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
  end

  create_table "users_workshops", id: false, force: :cascade do |t|
    t.integer "workshop_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "users_workshops", ["user_id", "workshop_id"], name: "index_users_workshops_on_user_id_and_workshop_id", using: :btree
  add_index "users_workshops", ["workshop_id", "user_id"], name: "index_users_workshops_on_workshop_id_and_user_id", using: :btree

  create_table "workshop_locations", force: :cascade do |t|
    t.string  "location_name"
    t.string  "street_address"
    t.string  "street_address_2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
  end

  create_table "workshops", force: :cascade do |t|
    t.date    "workshop_date"
    t.integer "workshop_location_id"
  end

end
