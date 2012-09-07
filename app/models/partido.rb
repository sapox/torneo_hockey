class Partido < ActiveRecord::Base
  attr_accessible :cancha_id, :fecha_encuentro, :arbitro1, :arbitro2, :equipo1, :equipo2
  has_many :partidos_arbitros
  has_many :equipo_partidos
  has_many :equipos, through: :equipo_partidos
  belongs_to :cancha

end
