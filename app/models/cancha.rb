class Cancha < ActiveRecord::Base
  attr_accessible :calle_y_numero, :capacidad_publico, :ciudad, :nombre, :pais, :provincia
  has_many :partidos
  validates :calle_y_numero, :capacidad_publico, :ciudad, :nombre, :pais, :provincia, :presence => true
  validates :ciudad, :nombre, :pais, :provincia, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
  validates :capacidad_publico, :numericality => { :only_integer => true }, :length => { :minimum => 3 }
end
