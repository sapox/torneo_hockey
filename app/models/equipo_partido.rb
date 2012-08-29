class EquipoPartido < ActiveRecord::Base
  attr_accessible :cantidad_de_goles, :equipo_id, :partido_id
end
