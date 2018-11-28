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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_27_081410) do
=======
ActiveRecord::Schema.define(version: 2018_11_27_021528) do
>>>>>>> 9568bf8e87d3e6ac8c2cfeae9ddc30c4f37c75d1

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coins", force: :cascade do |t|
<<<<<<< HEAD
    t.integer "value"
    t.string "name"
=======
    t.string "name"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "coin_id"
    t.boolean "withdrawl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.string "api_key"
>>>>>>> 9568bf8e87d3e6ac8c2cfeae9ddc30c4f37c75d1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
