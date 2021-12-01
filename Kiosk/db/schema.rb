# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_22_170146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.integer "client_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "health_histories", force: :cascade do |t|
    t.integer "health_history_id"
    t.integer "patient_id"
    t.string "relation"
    t.string "status"
    t.string "value_type"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "user_id"
    t.string "license_no"
    t.string "sex"
    t.integer "height"
    t.integer "weight"
    t.string "marital_status"
    t.string "race"
    t.string "ethnicity"
    t.string "income_group"
    t.integer "emergency_contact_number"
    t.string "emergency_contact_name"
    t.string "emergency_contact_address"
    t.string "emergency_contact_email"
    t.string "rx_group"
    t.string "rx_bin"
    t.string "rx_pcn"
    t.boolean "blue_button_approval"
    t.string "visit_detail"
    t.boolean "legal_consent"
    t.string "insurance_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "session_id"
    t.integer "user_id"
    t.datetime "expiration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "client_id"
    t.string "password"
    t.datetime "last_login"
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "email"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "phone_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
