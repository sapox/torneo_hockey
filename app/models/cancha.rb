class Cancha < ActiveRecord::Base
  attr_accessible :calle_y_numero, :capacidad_publico, :ciudad, :nombre, :pais, :provincia
end
