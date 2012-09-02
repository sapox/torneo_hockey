class Arbitro < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :dni, :email, :sexo, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo
  has_many :partidos_arbitros
  validates :apellido, :direccion, :dni, :email, :sexo, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo,
  :presence => true
  validates :nombre, :apellido, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
  validates :dni, :telefono_celular, :telefono_fijo, :numericality => { :only_integer => true }
end
