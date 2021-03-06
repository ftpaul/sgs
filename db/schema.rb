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

ActiveRecord::Schema.define(:version => 20131013184414) do

  create_table "ano_lectivos", :force => true do |t|
    t.string   "ano_lectivo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "designacao"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "abreviatura"
  end

  create_table "socios", :force => true do |t|
    t.integer  "num_aluno"
    t.string   "nome"
    t.string   "morada"
    t.string   "cod_postal"
    t.string   "localidade"
    t.string   "telemovel"
    t.date     "nascimento"
    t.string   "email"
    t.string   "bi"
    t.string   "foto"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "curso_id"
    t.integer  "ano_lectivo_id"
    t.boolean  "permite_email"
    t.boolean  "permite_sms"
    t.boolean  "estado_civil"
    t.integer  "num_univercidade"
    t.string   "sexo"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
