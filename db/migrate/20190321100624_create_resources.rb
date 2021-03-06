class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table "audiences", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_audiences_on_resource_id"
    end
  
    create_table "availabilities", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_availabilities_on_resource_id"
    end
  
    create_table "bug_reports", force: :cascade do |t|
      t.string "desc"
      t.boolean "closed"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "campuses", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_campuses_on_resource_id"
    end
  
    create_table "client_tags", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_client_tags_on_resource_id"
    end
  
    create_table "colleges", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_colleges_on_resource_id"
    end
  
    create_table "edits", force: :cascade do |t|
      t.integer "resource_id"
      t.string "user"
      t.string "parameter"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "innovation_stages", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_innovation_stages_on_resource_id"
    end
  
    create_table "locations", force: :cascade do |t|
      t.integer "parent_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["parent_id"], name: "index_locations_on_parent_id"
    end
  
    create_table "population_focuses", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_population_focuses_on_resource_id"
    end
  
    create_table "resources", force: :cascade do |t|
      t.string "title"
      t.string "url"
      t.string "contact_email"
      t.text "description"
      t.string "resource_email"
      t.string "resource_phone"
      t.string "address"
      t.string "contact_name"
      t.string "contact_phone"
      t.datetime "deadline"
      t.text "notes"
      t.string "funding_amount"
      t.string "location"
      t.integer "approval_status"
      t.string "approved_by"
      t.integer "flagged"
      t.text "flagged_comment"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "technologies", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_technologies_on_resource_id"
    end
  
    create_table "topics", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_topics_on_resource_id"
    end
  
    create_table "types", force: :cascade do |t|
      t.integer "resource_id"
      t.string "val"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["resource_id"], name: "index_types_on_resource_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "api_token", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end
end
