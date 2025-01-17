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

ActiveRecord::Schema.define(version: 2019_09_08_134142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acme_reports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "acme_sales", force: :cascade do |t|
    t.string "customer_name"
    t.string "item_description"
    t.decimal "item_price"
    t.integer "quantity"
    t.string "merchant_name"
    t.string "merchant_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "acme_report_id"
    t.index ["acme_report_id"], name: "index_acme_sales_on_acme_report_id"
  end

  add_foreign_key "acme_sales", "acme_reports"
end
