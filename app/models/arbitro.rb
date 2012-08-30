class Arbitro < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :dni, :email, :sexo, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo
  has_many :partidos_arbitros
end
