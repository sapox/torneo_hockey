class AddEquipoIdToEquiposYCuerposTecnicos < ActiveRecord::Migration
  def change
    add_column :equipos_y_cuerpos_tecnicos, :equipo_id, :integer
  end
end
