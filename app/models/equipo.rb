class Equipo < ActiveRecord::Base
  attr_accessible :cantidad_de_derrotas, :cantidad_de_empates, :cantidad_de_victorias, :categoria, :sexo
  belongs_to :club
  has_many :jugadores
  has_many :equipos_y_cuerpos_tecnicos
  has_many :equipo_partidos
end
