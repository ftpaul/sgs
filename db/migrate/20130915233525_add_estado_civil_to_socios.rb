class AddEstadoCivilToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :estado_civil, :boolean
  end
end
