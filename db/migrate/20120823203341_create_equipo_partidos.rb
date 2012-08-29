class CreateEquipoPartidos < ActiveRecord::Migration
  def change
    create_table :equipo_partidos do |t|
      t.integer :partido_id
      t.integer :equipo_id
      t.integer :cantidad_de_goles

      t.timestamps
    end
  end
end
