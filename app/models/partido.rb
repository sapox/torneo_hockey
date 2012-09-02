class Partido < ActiveRecord::Base
  attr_accessible :cancha_id, :fecha_encuentro
  has_many :partidos_arbitros
  belongs_to :cancha

end
