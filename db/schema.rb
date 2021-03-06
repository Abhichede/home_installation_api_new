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

ActiveRecord::Schema.define(version: 2022_01_22_180655) do

  create_table "agency_contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agent_contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "agency_name"
    t.string "client_agent"
    t.string "seller_agent"
    t.string "phone"
    t.string "email"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "second_email"
    t.string "second_phone"
    t.string "date_of_birth"
    t.string "agency_phone"
    t.string "image"
  end

  create_table "agreements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "agreement_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "automation_descriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "automation_id"
    t.string "email_check"
    t.string "text_check"
    t.string "simple_check"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "automation_headings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "heading_name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "automation_saves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "automation_description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "city_name"
    t.integer "zipcode"
    t.integer "country_code"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "contract_summary"
    t.string "signature"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "country_name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.string "type"
    t.string "amount_percentage"
    t.string "discription"
    t.string "notes"
    t.string "description"
    t.string "applied_to_service"
    t.string "applied_to_add_ons"
    t.string "max_uses"
    t.string "expiration_dates"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspectors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "enable_email"
    t.string "enable_phone"
    t.string "enable_schedule"
    t.string "enable_add_to_template"
    t.string "enable_edit_template"
    t.string "enable_can_manage_constacts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "menu_name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "organization_name"
    t.string "enable_completion_to_publish"
    t.string "enable_cost_estimator"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realtors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "agent_type"
    t.string "mobile_number"
    t.string "email"
    t.string "company_name"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "refral_resources", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "refral_resource_percentage"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "report_name"
    t.string "inspection_date"
    t.string "inspection_start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_picture_one"
    t.string "cover_picture_two"
    t.string "property_street_address"
    t.string "property_country"
    t.string "property_state"
    t.string "property_city"
    t.string "client_name"
    t.string "client_street_address"
    t.string "client_country"
    t.string "client_state"
    t.string "client_city"
    t.string "client_phone"
    t.string "client_email"
    t.string "client_fax"
    t.string "client_note"
    t.string "buyer"
    t.string "seller"
    t.string "buyer_agent"
    t.string "seller_agent"
    t.string "owner"
    t.string "other_present"
    t.string "inspection_end_time"
    t.string "invoice_number"
    t.string "fees_charged"
    t.string "taxes"
    t.string "other_charges"
    t.string "total_fee"
    t.string "date_paid"
    t.string "climate"
    t.string "temperature"
    t.string "humidity"
    t.string "furnished"
    t.string "number_of_stories"
    t.string "style"
    t.string "structure_orientations"
    t.string "type_of_construction"
    t.string "year_built"
    t.string "sq_ft"
    t.string "travel_distance_start"
    t.string "travel_distance_end"
    t.string "total_travel"
    t.integer "user_id"
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "base_cost"
    t.string "duration"
    t.string "templates_id"
    t.string "agreement_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "day"
    t.string "block"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "enable_schedule_new_inspection"
    t.string "enable_publish_report"
    t.string "enable_new_comment_to_template"
    t.string "enable_edit_template"
    t.string "enable_manage_template"
    t.string "enable_access_financial_data"
    t.string "enable_comapany_data"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "template_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "top_agents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "agent_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "card_number"
    t.string "card_type"
    t.string "cvv"
    t.string "expiry_date"
    t.boolean "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.string "role"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country_of_residence"
    t.text "your_address"
    t.text "profile_photo"
    t.string "profile_designation"
  end

  create_table "zipcodes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "zipcode"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
