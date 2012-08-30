class PartidoArbitro < ActiveRecord::Base
  attr_accessible :arbitro_id, :dni, :partido_id
  belongs_to :arbitro
  belongs_to :partido
end
