class AddPermiteEmailToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :permite_email, :boolean
  end
end
