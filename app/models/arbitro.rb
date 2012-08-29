class Arbitro < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :dni, :email, :fecha_de_nacimiento, :nombre, :telefono_celular, :telefono_fijo
end
