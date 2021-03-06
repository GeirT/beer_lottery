# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130213151256) do

  create_table "lotteries", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "due_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lotteries_users", :id => false, :force => true do |t|
    t.integer "lottery_id"
    t.integer "user_id"
  end

  add_index "lotteries_users", ["lottery_id", "user_id"], :name => "index_lotteries_users_on_lottery_id_and_user_id"
  add_index "lotteries_users", ["user_id", "lottery_id"], :name => "index_lotteries_users_on_user_id_and_lottery_id"

  create_table "prizes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "lottery_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "prizes", ["lottery_id"], :name => "index_prizes_on_lottery_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "nick_name"
    t.text     "description"
    t.date     "birthday"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "email"
  end

end
