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

ActiveRecord::Schema.define(:version => 20120607043804) do

  create_table "DATA_SRC", :id => false, :force => true do |t|
    t.string "DataSrc_ID",  :limit => 6,   :null => false
    t.string "Authors"
    t.string "Title",                      :null => false
    t.string "Year",        :limit => 4
    t.string "Journal",     :limit => 135
    t.string "Vol_City",    :limit => 16
    t.string "Issue_State", :limit => 5
    t.string "Start_Page",  :limit => 5
    t.string "End_Page",    :limit => 5
  end

  create_table "DERIV_CD", :id => false, :force => true do |t|
    t.string "Deriv_Cd",   :limit => 4,   :null => false
    t.string "Deriv_Desc", :limit => 120
  end

  create_table "FD_GROUP", :id => false, :force => true do |t|
    t.string "FdGrp_Cd",   :limit => 4,  :null => false
    t.string "FdGrp_Desc", :limit => 60, :null => false
  end

  create_table "LANGDESC", :id => false, :force => true do |t|
    t.string "Factor_Code", :limit => 5,   :null => false
    t.string "Description", :limit => 140, :null => false
  end

  create_table "LANGUAL", :id => false, :force => true do |t|
    t.string "NDB_No",      :limit => 5, :null => false
    t.string "Factor_Code", :limit => 5, :null => false
  end

  create_table "SRC_CD", :id => false, :force => true do |t|
    t.string "Src_Cd",     :limit => 2,  :null => false
    t.string "SrcCd_Desc", :limit => 60, :null => false
  end

  create_table "abilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activities", :force => true do |t|
    t.integer  "activity_verb_id"
    t.string   "channel_id"
    t.string   "integer"
    t.string   "ancestry"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "activity_actions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_logs", :force => true do |t|
    t.integer  "author_id"
    t.integer  "actor_id"
    t.integer  "action_id"
    t.integer  "verb_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_object_activities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_object_audiences", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_object_properties", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_objects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activity_verbs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "actors", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "slug"
    t.string   "subject_type"
    t.boolean  "notify_by_email"
    t.integer  "activity_object_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "audiences", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "badges_sashes", :id => false, :force => true do |t|
    t.integer  "badge_id"
    t.integer  "sash_id"
    t.boolean  "notified_user", :default => false
    t.datetime "created_at"
  end

  add_index "badges_sashes", ["badge_id", "sash_id"], :name => "index_badges_sashes_on_badge_id_and_sash_id"
  add_index "badges_sashes", ["badge_id"], :name => "index_badges_sashes_on_badge_id"
  add_index "badges_sashes", ["sash_id"], :name => "index_badges_sashes_on_sash_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "categories", ["slug"], :name => "index_categories_on_slug", :unique => true

  create_table "checklists", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "owner_id",         :null => false
    t.integer  "commentable_id",   :null => false
    t.string   "commentable_type", :null => false
    t.text     "body",             :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "contacts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foods", :force => true do |t|
    t.integer "ndb",                                                      :null => false
    t.string  "fdgrp_cd",    :limit => 4,                                 :null => false
    t.string  "longdesc",    :limit => 200,                               :null => false
    t.string  "shortdesc",   :limit => 60,                                :null => false
    t.string  "comname",     :limit => 100
    t.string  "manufacname", :limit => 65
    t.string  "survey",      :limit => 1
    t.string  "ref_desc",    :limit => 135
    t.integer "refuse"
    t.string  "SciName",     :limit => 65
    t.decimal "n_factor",                   :precision => 4, :scale => 2
    t.decimal "pro_factor",                 :precision => 4, :scale => 2
    t.decimal "fat_factor",                 :precision => 4, :scale => 2
    t.decimal "cho_factor",                 :precision => 4, :scale => 2
  end

  create_table "goals", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "value"
    t.integer  "category_id"
  end

  add_index "goals", ["user_id"], :name => "index_goals_on_user_id"

  create_table "mcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.integer  "ndb"
    t.integer  "quanity"
    t.string   "units"
    t.date     "date"
    t.string   "mcategory_id"
    t.string   "integer"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "merit_actions", :force => true do |t|
    t.integer  "user_id"
    t.string   "action_method"
    t.integer  "action_value"
    t.boolean  "had_errors"
    t.string   "target_model"
    t.integer  "target_id"
    t.boolean  "processed",     :default => false
    t.string   "log"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "mposts", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mposts", ["user_id"], :name => "index_mposts_on_user_id"

  create_table "notes", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifications", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "notifications", ["user_id"], :name => "index_notifications_on_user_id"

  create_table "nutr_defs", :force => true do |t|
    t.string  "nutr_no",  :limit => 3,  :null => false
    t.string  "units",    :limit => 7,  :null => false
    t.string  "tagname",  :limit => 20
    t.string  "nutrdesc", :limit => 60, :null => false
    t.string  "num_dec",  :limit => 1,  :null => false
    t.integer "sr_order",               :null => false
  end

  create_table "nutrients", :force => true do |t|
    t.integer "ndb",                                                        :null => false
    t.string  "nutr_no",       :limit => 3,                                 :null => false
    t.decimal "nutr_val",                    :precision => 10, :scale => 3, :null => false
    t.decimal "num_data_pts",                :precision => 5,  :scale => 0, :null => false
    t.decimal "Std_Error",                   :precision => 8,  :scale => 3
    t.string  "Src_Cd",        :limit => 2,                                 :null => false
    t.string  "Deriv_Cd",      :limit => 4
    t.string  "Ref_NDB_No",    :limit => 5
    t.string  "Add_Nutr_Mark", :limit => 1
    t.integer "Num_Studies"
    t.decimal "Min",                         :precision => 10, :scale => 3
    t.decimal "Max",                         :precision => 10, :scale => 3
    t.integer "DF"
    t.decimal "Low_EB",                      :precision => 10, :scale => 3
    t.decimal "Up_EB",                       :precision => 10, :scale => 3
    t.string  "Stat_cmt",      :limit => 10
    t.string  "CC",            :limit => 1
  end

  create_table "permissions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.text     "about"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.string   "relstat"
    t.string   "gender"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "relations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "sashes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "uname"
    t.string   "uemail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "acct_enabled", :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "settings", ["user_id"], :name => "index_settings_on_user_id"

  create_table "stats", :force => true do |t|
    t.string   "name"
    t.string   "stype"
    t.string   "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "sunit"
    t.integer  "user_id"
    t.integer  "category_id"
    t.date     "date"
  end

  create_table "ties", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "sash_id"
    t.integer  "points",                 :default => 0
    t.integer  "level",                  :default => 0
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
