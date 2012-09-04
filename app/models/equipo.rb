class Equipo < ActiveRecord::Base
  attr_accessible :cantidad_de_derrotas, :cantidad_de_empates, :cantidad_de_victorias, :categoria, :sexo, :nombre
  belongs_to :club
  has_many :jugadores
  has_many :equipos_y_cuerpos_tecnicos, class_name: 'EquipoYCuerpoTecnico'
  has_many :equipo_partidos
  has_many :empleados_del_cuerpo_tecnico, through: :equipos_y_cuerpos_tecnicos

  validates :cantidad_de_derrotas, presence:{:message => "no deberia estar en blanco"}, :numericality => { :only_integer => true, :message => "Solo numeros permitidos" }
  validates :cantidad_de_empates, presence:{:message => "no deberia estar en blanco"}, :numericality => { :only_integer => true, :message => "Solo numeros permitidos" }
  validates :cantidad_de_victorias, presence:{:message => "no deberia estar en blanco"}, :numericality => { :only_integer => true, :message => "Solo numeros permitidos" }
  validates :categoria, presence:{:message => "no deberia estar en blanco"}
  validates :sexo, presence:{:message => "no deberia estar en blanco"}
  validates :nombre, presence:{:message => "no deberia estar en blanco"}, uniqueness:{:message => "no debe estar repetido"}, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
end
