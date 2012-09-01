class AddNombreToEquipos < ActiveRecord::Migration
  def change
    add_column :equipos, :nombre, :string
  end
end
