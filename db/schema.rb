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

ActiveRecord::Schema.define(version: 20160919172604) do

  create_table "exercise_types", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "type_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "link"
  end

  create_table "favorite_workout_exercises", force: :cascade do |t|
    t.integer "favorite_workout_id"
    t.integer "exercise_id"
  end

  create_table "favorite_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "rep"
    t.string  "set"
  end

  create_table "logs", force: :cascade do |t|
    t.string   "name"
    t.integer  "set"
    t.integer  "rep"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
    t.string "sunday"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_exercises", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exercise_id"
    t.string  "duration"
  end

  create_table "user_favorite_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "favorite_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "gender"
    t.string "weight"
    t.string "height"
    t.string "age"
    t.string "goal"
  end

end
