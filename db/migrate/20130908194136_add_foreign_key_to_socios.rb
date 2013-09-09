class AddForeignKeyToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :curso_id, :integer
  end
end
