class EmpleadoDelCuerpoTecnico < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :dni, :email, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo
  has_many :equipos_y_cuerpos_tecnicos
  validates :apellido, :direccion, :dni, :email, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo, :presence => true
  validates :nombre, :apellido, :direccion, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
  validates :dni, :telefono_celular, :telefono_fijo, :numericality => { :only_integer => true }
end
