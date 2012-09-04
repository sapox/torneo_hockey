class Jugador < ActiveRecord::Base
  attr_accessible :apellido, :ciudad, :codigo_club_id, :direccion, :dni, :equipo_id, :fecha_nacimiento, :nombre, :provincia, :puesto, :sexo, :telefono_celular, :telefono_fijo

  belongs_to :equipo

  validates :apellido, :ciudad, :codigo_club_id, :direccion, :dni, :equipo_id, :fecha_nacimiento, :nombre, :provincia, :puesto, :sexo, :telefono_celular, :telefono_fijo, presence:{:message => "no deberia estar en blanco"} 
  validates :apellido, :nombre, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
  validates :telefono_celular, :telefono_fijo, :dni, :numericality => { :only_integer => true, :message => "Solo numeros permitidos" }
end
