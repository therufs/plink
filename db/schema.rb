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

ActiveRecord::Schema.define(version: 20170327214459) do

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password_digest"
    t.string   "displayname"
    t.decimal  "balance",         precision: 5, scale: 2
    t.string   "auth_token"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
  end

end
