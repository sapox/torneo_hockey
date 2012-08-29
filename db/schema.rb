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

ActiveRecord::Schema.define(:version => 20120824032839) do

  create_table "arbitros", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.date     "fecha_de_nacimiento"
    t.string   "telefono_fijo"
    t.string   "telefono_celular"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "canchas", :force => true do |t|
    t.string   "nombre"
    t.string   "pais"
    t.string   "provincia"
    t.string   "ciudad"
    t.string   "calle_y_numero"
    t.integer  "capacidad_publico"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "clubes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "empleados_del_cuerpo_tecnico", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.date     "fecha_de_nacimiento"
    t.string   "telefono_fijo"
    t.string   "telefono_celular"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "equipo_partidos", :force => true do |t|
    t.integer  "partido_id"
    t.integer  "equipo_id"
    t.integer  "cantidad_de_goles"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "sexo"
    t.string   "categoria"
    t.integer  "cantidad_de_victorias"
    t.integer  "cantidad_de_derrotas"
    t.integer  "cantidad_de_empates"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "equipos_y_cuerpos_tecnicos", :force => true do |t|
    t.integer  "codigo_club_id"
    t.integer  "empleado_del_cuerpo_tecnico_id"
    t.string   "puesto"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "jugadores", :force => true do |t|
    t.integer  "codigo_club_id"
    t.integer  "equipo_id"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "dni"
    t.string   "direccion"
    t.date     "fecha_nacimiento"
    t.string   "puesto"
    t.string   "telefono_fijo"
    t.string   "telefono_celular"
    t.string   "provincia"
    t.string   "ciudad"
    t.string   "sexo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "partidos", :force => true do |t|
    t.integer  "cancha_id"
    t.date     "fecha"
    t.datetime "fecha_encuentro"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "partidos_arbitros", :force => true do |t|
    t.integer  "partido_id"
    t.integer  "arbitro_id"
    t.string   "dni"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
