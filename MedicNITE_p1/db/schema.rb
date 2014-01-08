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

ActiveRecord::Schema.define(version: 0) do

  create_table "areas", primary_key: "idArea", force: true do |t|
    t.string "especialidadArea", limit: 60
  end

  create_table "asignacion_tipos", primary_key: "idTipoAsignacion", force: true do |t|
    t.string "tipoAsignacion", limit: 40
  end

  create_table "asignaciones", primary_key: "idAsignacion", force: true do |t|
    t.integer "perIdPersona"
    t.integer "pacIdPersona"
    t.integer "idPersona"
    t.integer "idUsuario",          default: 0, null: false
    t.integer "idSala"
    t.integer "idTipoAsignacion",               null: false
    t.integer "idCama"
    t.integer "idArea"
    t.date    "iniFechaAsignacion",             null: false
    t.time    "iniHoraAsignacion",              null: false
    t.date    "finFechaAsignacion"
    t.time    "finHoraAsignacion"
  end

  add_index "asignaciones", ["idArea"], name: "FK_asignacionArea", using: :btree
  add_index "asignaciones", ["idCama"], name: "FK_seAsignaCama", using: :btree
  add_index "asignaciones", ["idSala"], name: "FK_seAsignaSala", using: :btree
  add_index "asignaciones", ["idTipoAsignacion"], name: "FK_tipoAsignClasificaAsign", using: :btree
  add_index "asignaciones", ["idUsuario"], name: "FK_usuarioAsignaciones", using: :btree
  add_index "asignaciones", ["perIdPersona", "pacIdPersona"], name: "FK_pacEsAsignado", using: :btree

  create_table "camas", primary_key: "idCama", force: true do |t|
    t.integer "idArea"
    t.integer "idHabitacion"
    t.integer "idSala"
    t.string  "codVisibleCama", limit: 5
    t.string  "estadoCama",     limit: 10, null: false
    t.string  "tipoCama",       limit: 20
  end

  add_index "camas", ["idArea"], name: "FK_areaPoseeCamas", using: :btree
  add_index "camas", ["idHabitacion"], name: "FK_habPoseeCamas", using: :btree
  add_index "camas", ["idSala"], name: "FK_salaPoseeCamas", using: :btree

  create_table "desocupamiento_recintos", primary_key: "idDesocupamientoRecinto", force: true do |t|
    t.integer "idAsignacion"
    t.date    "fechaDesocupamiento", null: false
    t.time    "horaDesocupamiento",  null: false
  end

  add_index "desocupamiento_recintos", ["idAsignacion"], name: "FK_asignPoseeDeocupa", using: :btree

  create_table "habitacions", primary_key: "idHabitacion", force: true do |t|
    t.integer "idSala"
    t.string  "codVisibleHabitacion", limit: 5
    t.string  "tipoHabitacion",       limit: 20
    t.integer "capacidadHabitacion"
    t.string  "estadoHabitacion",     limit: 10, null: false
  end

  add_index "habitacions", ["idSala"], name: "FK_salaContieneHabitaciones", using: :btree

  create_table "historial_usuarios", primary_key: "idHistorialUsuarios", force: true do |t|
    t.integer "idUsuario",                   default: 0, null: false
    t.string  "operacionUsuario", limit: 20,             null: false
    t.text    "detalleOperacion"
    t.time    "horaOperacion"
    t.date    "fechaOperacion"
  end

  add_index "historial_usuarios", ["idUsuario"], name: "FK_usuarioRegistraHistorial", using: :btree

  create_table "observaciones", primary_key: "idObservacion", force: true do |t|
    t.integer "idPersona",          null: false
    t.integer "perIdPersona",       null: false
    t.integer "pacIdPersona",       null: false
    t.text    "detalleObservacion", null: false
  end

  add_index "observaciones", ["perIdPersona", "idPersona"], name: "FK_pacPoseeObs", using: :btree

  create_table "paciente_estados", primary_key: "idEstadoPaciente", force: true do |t|
    t.string "estadoPaciente", limit: 40
  end

  create_table "paciente_tipos", primary_key: "idTipoPaciente", force: true do |t|
    t.string "tipoPaciente", limit: 20
  end

  create_table "pacientes", id: false, force: true do |t|
    t.integer "perIdPersona",     null: false
    t.integer "idPersona",        null: false
    t.integer "idTipoPaciente",   null: false
    t.integer "idEstadoPaciente", null: false
  end

  add_index "pacientes", ["idEstadoPaciente"], name: "FK_pacPresentaEstPac", using: :btree
  add_index "pacientes", ["idPersona"], name: "FK_deudorEsPersona", using: :btree
  add_index "pacientes", ["idTipoPaciente"], name: "FK_pacTipoClasificaPaciente", using: :btree

  create_table "personal_rubro_tipos", primary_key: "idTipoPersonalRubro", force: true do |t|
    t.string "tipoPersonalRubro", limit: 20
  end

  create_table "personal_rubros", primary_key: "idPersona", force: true do |t|
    t.integer "idTipoPersonalRubro",                  null: false
    t.string  "especialidadPersonalRubro", limit: 40
  end

  add_index "personal_rubros", ["idTipoPersonalRubro"], name: "FK_perRubTipClasificaPerRub", using: :btree

  create_table "personas", primary_key: "idPersona", force: true do |t|
    t.string "domicilioPersona",       limit: 40
    t.string "nombresPersona",         limit: 40
    t.string "apellidosPersona",       limit: 40
    t.date   "fechaNacimientoPersona"
    t.string "rutPersona",             limit: 10
  end

  create_table "reserva_tipos", primary_key: "idTipoReserva", force: true do |t|
    t.string "tipoReserva", limit: 20, null: false
  end

  create_table "reservas", primary_key: "idReserva", force: true do |t|
    t.integer "idTipoReserva",               null: false
    t.integer "idPersona"
    t.integer "idAsignacion"
    t.integer "idUsuario",       default: 0, null: false
    t.integer "idSala"
    t.integer "idArea"
    t.integer "idCama"
    t.integer "perIdPersona"
    t.integer "pacIdPersona"
    t.date    "iniFechaReserva",             null: false
    t.time    "iniHoraReserva",              null: false
    t.date    "finFechaReserva"
    t.time    "finHoraReserva"
  end

  add_index "reservas", ["idArea"], name: "FK_reservaCorrespondeArea", using: :btree
  add_index "reservas", ["idAsignacion"], name: "FK_reservaRegistraAsignacion", using: :btree
  add_index "reservas", ["idCama"], name: "FK_reservacionCama", using: :btree
  add_index "reservas", ["idPersona"], name: "FK_reservaParaPersonal", using: :btree
  add_index "reservas", ["idSala"], name: "FK_reservacionSala", using: :btree
  add_index "reservas", ["idTipoReserva"], name: "FK_tipoReservaClasificaReserva", using: :btree
  add_index "reservas", ["idUsuario"], name: "FK_usuarioReserva", using: :btree
  add_index "reservas", ["perIdPersona", "pacIdPersona"], name: "FK_reservaParaPaciente", using: :btree

  create_table "salas", primary_key: "idSala", force: true do |t|
    t.integer "idArea"
    t.string  "codVisibleSala", limit: 5
    t.string  "tipoSala",       limit: 20
    t.string  "estadoSalas",    limit: 10, null: false
  end

  add_index "salas", ["idArea"], name: "FK_areaPoseeSalas", using: :btree

  create_table "usuarios", primary_key: "idUsuario", force: true do |t|
    t.integer  "idPersona"
    t.string   "nombreUsuario",          limit: 20
    t.string   "encrypted_password"
    t.integer  "estadoUsuario",          limit: 2,  default: 1, null: false
    t.integer  "nivelAutorizacion",      limit: 2,  default: 0, null: false
    t.string   "email",                                         null: false
    t.string   "codAccion",              limit: 10
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["idPersona"], name: "FK_perRubroEsUsuario", using: :btree

end
