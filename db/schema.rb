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

ActiveRecord::Schema.define(version: 2020_06_04_070114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "category"
    t.string "address"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activity_reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "booking_activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_activity_id"], name: "index_activity_reviews_on_booking_activity_id"
    t.index ["user_id"], name: "index_activity_reviews_on_user_id"
  end

  create_table "booking_activities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "trip_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.string "status_reservation", default: "pending"
    t.index ["activity_id"], name: "index_booking_activities_on_activity_id"
    t.index ["trip_id"], name: "index_booking_activities_on_trip_id"
  end

  create_table "booking_flats", force: :cascade do |t|
    t.bigint "flat_id", null: false
    t.bigint "trip_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.string "status_reservation", default: "pending"
    t.index ["flat_id"], name: "index_booking_flats_on_flat_id"
    t.index ["trip_id"], name: "index_booking_flats_on_trip_id"
  end

  create_table "booking_restaurants", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "trip_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.string "status_reservation", default: "pending"
    t.index ["restaurant_id"], name: "index_booking_restaurants_on_restaurant_id"
    t.index ["trip_id"], name: "index_booking_restaurants_on_trip_id"
  end

  create_table "flat_reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "booking_flat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_flat_id"], name: "index_flat_reviews_on_booking_flat_id"
    t.index ["user_id"], name: "index_flat_reviews_on_user_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.float "latitude"
    t.boolean "availability"
    t.float "longitude"
    t.string "label"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.integer "capacity"
  end

  create_table "restaurant_reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "booking_restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_restaurant_id"], name: "index_restaurant_reviews_on_booking_restaurant_id"
    t.index ["user_id"], name: "index_restaurant_reviews_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "category"
    t.string "address"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "number_of_travellers"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "location"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "activity_reviews", "booking_activities"
  add_foreign_key "activity_reviews", "users"
  add_foreign_key "booking_activities", "activities"
  add_foreign_key "booking_activities", "trips"
  add_foreign_key "booking_flats", "flats"
  add_foreign_key "booking_flats", "trips"
  add_foreign_key "booking_restaurants", "restaurants"
  add_foreign_key "booking_restaurants", "trips"
  add_foreign_key "flat_reviews", "booking_flats"
  add_foreign_key "flat_reviews", "users"
  add_foreign_key "restaurant_reviews", "booking_restaurants"
  add_foreign_key "restaurant_reviews", "users"
  add_foreign_key "trips", "users"
end
