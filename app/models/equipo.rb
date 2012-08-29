class Equipo < ActiveRecord::Base
  attr_accessible :cantidad_de_derrotas, :cantidad_de_empates, :cantidad_de_victorias, :categoria, :sexo
end
