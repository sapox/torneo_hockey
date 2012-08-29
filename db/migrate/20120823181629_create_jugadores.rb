class CreateJugadores < ActiveRecord::Migration
  def change
    create_table :jugadores do |t|
      t.integer :codigo_club_id
      t.integer :equipo_id
      t.string :apellido
      t.string :nombre
      t.string :dni
      t.string :direccion
      t.date :fecha_nacimiento
      t.string :puesto
      t.string :telefono_fijo
      t.string :telefono_celular
      t.string :provincia
      t.string :ciudad
      t.string :sexo

      t.timestamps
    end
  end
end
