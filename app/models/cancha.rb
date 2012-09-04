class Cancha < ActiveRecord::Base
  attr_accessible :calle_y_numero, :capacidad_publico, :ciudad, :nombre, :pais, :provincia
  has_many :partidos
  validates :calle_y_numero, :capacidad_publico, :ciudad, :nombre, :pais, :provincia, presence: {:message => "no deberia estar en blanco"}
  validates :ciudad, :nombre, :pais, :provincia, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
  validates :capacidad_publico, :numericality => { :only_integer => true, message: "solo numeros estan permitidos"}, :length => { :minimum => 3, message: "debe ser mayor a 3 digitos"}
end
