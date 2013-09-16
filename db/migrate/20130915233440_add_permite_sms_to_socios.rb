class AddPermiteSmsToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :permite_sms, :boolean
  end
end
