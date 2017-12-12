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

ActiveRecord::Schema.define(version: 20171209090514) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "photos"
    t.integer "user_id"
    t.integer "resturant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resturant_id"], name: "index_blogs_on_resturant_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commments", force: :cascade do |t|
    t.string "commenter"
    t.integer "user_id"
    t.integer "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_commments_on_blog_id"
    t.index ["user_id"], name: "index_commments_on_user_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer "level"
    t.integer "user_id"
    t.integer "resturant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resturant"], name: "index_evaluations_on_resturant"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_likes_on_blog_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chatrooms_id"
    t.integer "chatroom_id"
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["chatrooms_id"], name: "index_messages_on_chatrooms_id"
  end

  create_table "resturants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "seat"
    t.integer "minimum_order"
    t.integer "phone"
    t.integer "dining_time"
    t.integer "open_time"
    t.integer "close_time"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_resturants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
