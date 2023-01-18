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

ActiveRecord::Schema[7.0].define(version: 2023_01_17_145315) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "meeting"
    t.text "request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_calendars_on_user_id"
  end

  create_table "communications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_communications_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.float "valuation"
    t.float "performance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "update"
    t.text "meeting"
    t.text "contract"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_investors_on_user_id"
  end

  create_table "lp_and_gps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.string "role"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_lp_and_gps_on_company_id"
    t.index ["user_id"], name: "index_lp_and_gps_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.text "update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_news_on_company_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.string "role"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_relationships_on_company_id"
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "notification"
    t.string "privacy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_settings_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.float "amount"
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_transactions_on_company_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admins", "users"
  add_foreign_key "calendars", "users"
  add_foreign_key "communications", "users"
  add_foreign_key "investors", "users"
  add_foreign_key "lp_and_gps", "companies"
  add_foreign_key "lp_and_gps", "users"
  add_foreign_key "news", "companies"
  add_foreign_key "relationships", "companies"
  add_foreign_key "relationships", "users"
  add_foreign_key "settings", "users"
  add_foreign_key "transactions", "companies"
  add_foreign_key "transactions", "users"
end
