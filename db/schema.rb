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

ActiveRecord::Schema.define(version: 2021_07_02_184043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "activity_fields", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activity_fields_on_user_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "uid"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.string "address_1"
    t.string "address_2"
    t.string "phone_1"
    t.string "phone_2"
    t.string "neighborhood"
    t.string "state"
    t.string "country"
    t.string "city"
    t.string "zip_code"
    t.string "po_box"
    t.string "street"
    t.string "door"
    t.float "latitude"
    t.float "longitude"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "api_keys", force: :cascade do |t|
    t.string "access_token", null: false
    t.integer "user_id", null: false
    t.boolean "active", default: true, null: false
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_api_keys_on_access_token", unique: true
    t.index ["user_id"], name: "index_api_keys_on_user_id"
  end

  create_table "cards", force: :cascade do |t|
    t.bigint "portfolio_id"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "organization"
    t.string "work_position"
    t.string "work_phone"
    t.string "private_phone"
    t.string "mobile_phone"
    t.string "work_fax"
    t.string "private_fax"
    t.string "email"
    t.string "address"
    t.string "website"
    t.string "street"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.text "descrption"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["portfolio_id"], name: "index_cards_on_portfolio_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "contact_forms", force: :cascade do |t|
    t.string "uid"
    t.string "full_name"
    t.string "phone"
    t.string "email"
    t.string "object"
    t.text "message"
    t.boolean "read"
    t.datetime "read_at"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "subject_class"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.string "uid"
    t.bigint "organization_id"
    t.bigint "service_id"
    t.string "position"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_invitations_on_organization_id"
    t.index ["recipient_id"], name: "index_invitations_on_recipient_id"
    t.index ["service_id"], name: "index_invitations_on_service_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "uid"
    t.bigint "invitation_id"
    t.bigint "organization_id"
    t.bigint "service_id"
    t.string "position"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invitation_id"], name: "index_members_on_invitation_id"
    t.index ["organization_id"], name: "index_members_on_organization_id"
    t.index ["service_id"], name: "index_members_on_service_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "organization_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_organization_types_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.bigint "organization_type_id"
    t.bigint "activity_field_id"
    t.string "slogan"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.string "zip_code"
    t.string "web_site"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_field_id"], name: "index_organizations_on_activity_field_id"
    t.index ["organization_type_id"], name: "index_organizations_on_organization_type_id"
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "uid"
    t.string "slug"
    t.string "title"
    t.text "content"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pages_on_user_id"
  end

  create_table "permission_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "permission_id"
    t.string "action_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_items_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "uid"
    t.bigint "feature_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_permissions_on_feature_id"
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "organization_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_portfolios_on_organization_id"
    t.index ["user_id"], name: "index_portfolios_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "uid"
    t.string "profile_type"
    t.string "company_name"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.text "describe"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "uid"
    t.bigint "organization_id"
    t.string "name"
    t.string "description"
    t.string "status"
    t.bigint "parent_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_services_on_organization_id"
    t.index ["parent_id"], name: "index_services_on_parent_id"
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "smtp_configs", force: :cascade do |t|
    t.string "smtp_host"
    t.string "smtp_user_name"
    t.string "smtp_user_password"
    t.string "smtp_domain"
    t.string "smtp_address"
    t.integer "smtp_port"
    t.string "smtp_authentification"
    t.boolean "smtp_enable_starttls_auto"
    t.boolean "smtp_ssl"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_smtp_configs_on_user_id"
  end

  create_table "subscription_pack_features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscription_pack_features_on_user_id"
  end

  create_table "subscription_pack_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "subscription_pack_id"
    t.bigint "subscription_pack_feature_id"
    t.string "quantity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_pack_feature_id"], name: "index_subscription_pack_items_on_subscription_pack_feature_id"
    t.index ["subscription_pack_id"], name: "index_subscription_pack_items_on_subscription_pack_id"
  end

  create_table "subscription_packs", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.decimal "price"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscription_packs_on_user_id"
  end

  create_table "subscription_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscription_types_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "uid"
    t.bigint "user_id"
    t.bigint "subscription_pack_id"
    t.bigint "subscription_type_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "quantity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_pack_id"], name: "index_subscriptions_on_subscription_pack_id"
    t.index ["subscription_type_id"], name: "index_subscriptions_on_subscription_type_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "login"
    t.bigint "role_id"
    t.string "status"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "activity_fields", "users"
  add_foreign_key "cards", "portfolios"
  add_foreign_key "cards", "users"
  add_foreign_key "invitations", "organizations"
  add_foreign_key "invitations", "services"
  add_foreign_key "invitations", "users"
  add_foreign_key "members", "invitations"
  add_foreign_key "members", "organizations"
  add_foreign_key "members", "services"
  add_foreign_key "members", "users"
  add_foreign_key "organization_types", "users"
  add_foreign_key "organizations", "activity_fields"
  add_foreign_key "organizations", "organization_types"
  add_foreign_key "organizations", "users"
  add_foreign_key "pages", "users"
  add_foreign_key "permission_items", "permissions"
  add_foreign_key "permissions", "features"
  add_foreign_key "permissions", "roles"
  add_foreign_key "portfolios", "organizations"
  add_foreign_key "portfolios", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "services", "organizations"
  add_foreign_key "services", "users"
  add_foreign_key "smtp_configs", "users"
  add_foreign_key "subscription_pack_features", "users"
  add_foreign_key "subscription_pack_items", "subscription_pack_features"
  add_foreign_key "subscription_pack_items", "subscription_packs"
  add_foreign_key "subscription_packs", "users"
  add_foreign_key "subscription_types", "users"
  add_foreign_key "subscriptions", "subscription_packs"
  add_foreign_key "subscriptions", "subscription_types"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "users", "roles"
end
