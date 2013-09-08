class CreateAnoLectivos < ActiveRecord::Migration
  def change
    create_table :ano_lectivos do |t|
      t.string :ano_lectivo

      t.timestamps
    end
  end
end
