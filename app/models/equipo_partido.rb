class EquipoPartido < ActiveRecord::Base
  attr_accessible :cantidad_de_goles, :equipo_id, :partido_id
  belongs_to :equipo
  belongs_to :partido
  validates :cantidad_de_goles, :equipo_id, :partido_id, presence: {:message => "no deberia estar en blanco"},
                                                         :numericality => { :only_integer => true, :message => "Solo numeros permitidos"}
end
