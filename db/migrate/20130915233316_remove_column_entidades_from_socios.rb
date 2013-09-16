class RemoveColumnEntidadesFromSocios < ActiveRecord::Migration
  def change
    remove_column :socios, :entidades
  end
end
