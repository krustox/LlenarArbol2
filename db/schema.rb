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

ActiveRecord::Schema.define(version: 20180220183613) do

  create_table "aggrupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "type_id",                       null: false
    t.string   "nombre_agrupacion",  limit: 50, null: false
    t.string   "display_agrupacion", limit: 50, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["type_id"], name: "fk_rails_35da600c23", using: :btree
  end

  create_table "channels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "enterprise_id",            null: false
    t.string   "nombre_canal",  limit: 50, null: false
    t.string   "display_canal", limit: 50, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["enterprise_id"], name: "fk_rails_a9fd69ca42", using: :btree
  end

  create_table "components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "site_id",                       null: false
    t.string   "nombre_componente",  limit: 50, null: false
    t.string   "display_componente", limit: 50, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["site_id"], name: "fk_rails_3d4861132a", using: :btree
  end

  create_table "elements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "subcomponent_id",             null: false
    t.string   "nombre_elemento",  limit: 50, null: false
    t.string   "display_elemento", limit: 50, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["subcomponent_id"], name: "fk_rails_69166405ad", using: :btree
  end

  create_table "enterprises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "holding_id",                 null: false
    t.string   "nombre_empresa",  limit: 50, null: false
    t.string   "display_empresa", limit: 50, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["holding_id"], name: "fk_rails_d4379c3688", using: :btree
  end

  create_table "holdings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre_holding",  limit: 50, null: false
    t.string   "display_holding", limit: 50, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "operations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "transaction_id",               null: false
    t.string   "nombre_operacion",  limit: 50, null: false
    t.string   "display_operacion", limit: 50, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["transaction_id"], name: "fk_rails_fbe7b1695e", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "segment_id",                  null: false
    t.string   "nombre_producto",  limit: 50, null: false
    t.string   "display_producto", limit: 50, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["segment_id"], name: "fk_rails_979385da52", using: :btree
  end

  create_table "segments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "aggrupation_id",              null: false
    t.string   "nombre_segmento",  limit: 50, null: false
    t.string   "display_segmento", limit: 50, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["aggrupation_id"], name: "fk_rails_189196176a", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "channel_id",                  null: false
    t.string   "nombre_servicio",  limit: 50, null: false
    t.string   "display_servicio", limit: 50, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["channel_id"], name: "fk_rails_c922f31f71", using: :btree
  end

  create_table "sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "subservice_id",            null: false
    t.string   "nombre_site",   limit: 50, null: false
    t.string   "display_site",  limit: 50, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["subservice_id"], name: "fk_rails_260b39fd4d", using: :btree
  end

  create_table "subcomponents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "component_id",                     null: false
    t.string   "nombre_subcomponente",  limit: 50, null: false
    t.string   "display_subcomponente", limit: 50, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["component_id"], name: "fk_rails_d7fad28f36", using: :btree
  end

  create_table "subservices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "type_id",                        null: false
    t.string   "nombre_subservicio",  limit: 50, null: false
    t.string   "display_subservicio", limit: 50, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["type_id"], name: "fk_rails_3f173ec7a4", using: :btree
  end

  create_table "transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "product_id",                     null: false
    t.string   "nombre_transaccion",  limit: 50, null: false
    t.string   "display_transaccion", limit: 50, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["product_id"], name: "fk_rails_0d676c9617", using: :btree
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "service_id",              null: false
    t.string   "nombre_tipo",  limit: 50, null: false
    t.string   "display_tipo", limit: 50, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["service_id"], name: "fk_rails_4639b85844", using: :btree
  end

  add_foreign_key "aggrupations", "types"
  add_foreign_key "channels", "enterprises"
  add_foreign_key "components", "sites"
  add_foreign_key "elements", "subcomponents"
  add_foreign_key "enterprises", "holdings"
  add_foreign_key "operations", "transactions"
  add_foreign_key "products", "segments"
  add_foreign_key "segments", "aggrupations"
  add_foreign_key "services", "channels"
  add_foreign_key "sites", "subservices"
  add_foreign_key "subcomponents", "components"
  add_foreign_key "subservices", "types"
  add_foreign_key "transactions", "products"
  add_foreign_key "types", "services"
end
