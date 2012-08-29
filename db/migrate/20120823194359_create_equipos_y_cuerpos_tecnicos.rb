class CreateEquiposYCuerposTecnicos < ActiveRecord::Migration
  def change
    create_table :equipos_y_cuerpos_tecnicos do |t|
      t.integer :codigo_club_id
      t.integer :empleado_del_cuerpo_tecnico_id
      t.string :puesto

      t.timestamps
    end
  end
end
