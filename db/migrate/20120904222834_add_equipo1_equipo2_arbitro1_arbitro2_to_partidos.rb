class AddEquipo1Equipo2Arbitro1Arbitro2ToPartidos < ActiveRecord::Migration
  def change
    add_column :partidos, :equipo1, :integer
    add_column :partidos, :equipo2, :integer
    add_column :partidos, :arbitro1, :integer
    add_column :partidos, :arbitro2, :integer
  end
end
