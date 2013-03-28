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

ActiveRecord::Schema.define(:version => 20130328133702) do

  create_table "direct_deposits", :force => true do |t|
    t.string   "Name"
    t.integer  "Bank_Account_Number"
    t.integer  "Routing_Number"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "payables", :force => true do |t|
    t.integer  "Document_Number"
    t.string   "Type"
    t.integer  "DD"
    t.integer  "PBK"
    t.integer  "ClrngDoc"
    t.string   "Text"
    t.string   "DocDate"
    t.string   "NetDue"
    t.float    "Amount_Due"
    t.string   "Currency"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "payrolls", :force => true do |t|
    t.string   "Employee_Name"
    t.string   "Date"
    t.string   "Job_Title"
    t.string   "Date_Begin"
    t.string   "Date_End"
    t.integer  "Hours"
    t.string   "Comments"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
