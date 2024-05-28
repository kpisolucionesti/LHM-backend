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

ActiveRecord::Schema[7.1].define(version: 2024_05_28_111746) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.integer "code"
    t.string "doctorName"
    t.string "patient"
    t.string "concept"
    t.string "client"
    t.string "date"
    t.string "status"
    t.integer "account"
    t.string "classInvoice"
    t.integer "invoice"
    t.decimal "tasa"
    t.decimal "price"
    t.decimal "fee"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ids", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "authentication"
    t.index ["user_id"], name: "index_user_ids_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.integer "ci"
    t.integer "code"
    t.string "firstName"
    t.string "lastName"
    t.string "specialty"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_ids", "users"
end
