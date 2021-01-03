# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_12_181108) do

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "work_address"
    t.string "email_address"
    t.string "years_of_experience"
  end

  create_table "propertyshowings", force: :cascade do |t|
    t.string "address"
    t.string "date"
    t.string "time"
    t.string "description"
    t.string "size"
    t.string "price"
    t.string "agent_id"
    t.string "seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "email_address"
    t.string "occupation"
  end

end
