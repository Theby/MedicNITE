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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131217031603) do

  create_table "personas", force: true do |t|
    t.string   "rutPersona"
    t.string   "nombresPersona"
    t.string   "apellidopaternoPersona"
    t.string   "apellidomaternoPersona"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_personas", force: true do |t|
    t.string   "nombreTipoPersona"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoper_clasifica_pers", force: true do |t|
    t.integer  "idTipoPersona", null: false
    t.integer  "idPersona",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "autorizacion_usuario",   default: 0,         null: false
    t.integer  "idPersona",              default: 0,         null: false
    t.string   "codigoSeguridadUsuario", default: "usuario"
    t.integer  "estadoCuentaUsuario",    default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
