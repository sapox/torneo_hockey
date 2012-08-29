class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :sexo
      t.string :categoria
      t.integer :cantidad_de_victorias
      t.integer :cantidad_de_derrotas
      t.integer :cantidad_de_empates

      t.timestamps
    end
  end
end
