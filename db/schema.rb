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

ActiveRecord::Schema.define(version: 2020_05_26_203124) do

  create_table "coach_reviews", force: :cascade do |t|
    t.integer "coach_id", null: false
    t.integer "member_id", null: false
    t.integer "rating"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_coach_reviews_on_coach_id"
    t.index ["member_id"], name: "index_coach_reviews_on_member_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.integer "gym_id", null: false
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_coaches_on_gym_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gym_equipments", force: :cascade do |t|
    t.integer "equipment_id", null: false
    t.integer "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_id"], name: "index_gym_equipments_on_equipment_id"
    t.index ["gym_id"], name: "index_gym_equipments_on_gym_id"
  end

  create_table "gym_reviews", force: :cascade do |t|
    t.integer "gym_id", null: false
    t.integer "member_id", null: false
    t.integer "rating"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_gym_reviews_on_gym_id"
    t.index ["member_id"], name: "index_gym_reviews_on_member_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.boolean "is_open"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.integer "age"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "gym_id", null: false
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_memberships_on_gym_id"
    t.index ["member_id"], name: "index_memberships_on_member_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.integer "coach_id", null: false
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_specialties_on_coach_id"
  end

  add_foreign_key "coach_reviews", "coaches"
  add_foreign_key "coach_reviews", "members"
  add_foreign_key "coaches", "gyms"
  add_foreign_key "gym_equipments", "equipment"
  add_foreign_key "gym_equipments", "gyms"
  add_foreign_key "gym_reviews", "gyms"
  add_foreign_key "gym_reviews", "members"
  add_foreign_key "memberships", "gyms"
  add_foreign_key "memberships", "members"
  add_foreign_key "specialties", "coaches"
end
