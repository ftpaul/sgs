class AddAnotherForeignKeyToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :ano_lectivo_id, :integer
  end
end
