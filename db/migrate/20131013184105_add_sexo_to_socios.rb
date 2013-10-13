class AddSexoToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :sexo, :string
  end
end
