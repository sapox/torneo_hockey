class PartidoArbitro < ActiveRecord::Base
  attr_accessible :arbitro_id, :dni, :partido_id
  has_many :arbitros
  has_many :partidos
end
