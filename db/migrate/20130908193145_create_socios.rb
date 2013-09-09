class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.integer :num_aluno
      t.string :nome
      t.string :morada
      t.string :cod_postal
      t.string :localidade
      t.string :telemovel
      t.date :nascimento
      t.string :email
      t.string :bi
      t.string :foto
      t.boolean :newsletter
      t.boolean :entidades

      t.timestamps
    end
  end
end
