class Jugador < ActiveRecord::Base
  attr_accessible :apellido, :ciudad, :codigo_club_id, :direccion, :dni, :equipo_id, :fecha_nacimiento, :nombre, :provincia, :puesto, :sexo, :telefono_celular, :telefono_fijo
end
