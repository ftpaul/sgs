class AddNumCartaoUnivercidadeToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :num_univercidade, :integer
  end
end
