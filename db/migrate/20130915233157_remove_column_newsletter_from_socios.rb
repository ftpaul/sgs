class RemoveColumnNewsletterFromSocios < ActiveRecord::Migration
  def change
    remove_column :socios, :newsletter
  end
end
