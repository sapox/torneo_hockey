class Equipo < ActiveRecord::Base
  attr_accessible :cantidad_de_derrotas, :cantidad_de_empates, :cantidad_de_victorias, :categoria, :sexo, :nombre
  belongs_to :club
  has_many :jugadores
  has_many :equipos_y_cuerpos_tecnicos, class_name: 'EquipoYCuerpoTecnico'
  has_many :equipo_partidos
  has_many :empleados_del_cuerpo_tecnico, through: :equipos_y_cuerpos_tecnicos

  validates :cantidad_de_derrotas, :presence => true, :numericality => { :only_integer => true }
  validates :cantidad_de_empates, :presence => true, :numericality => { :only_integer => true }
  validates :cantidad_de_victorias, :presence => true, :numericality => { :only_integer => true }
  validates :categoria, :presence => true
  validates :sexo, :presence => true
  validates :nombre, :presence => true, :uniqueness => true, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
end
