class AddAbrevToCursos < ActiveRecord::Migration
  def change
    add_column :cursos, :abreviatura, :string
  end
end
