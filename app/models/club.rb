class Club < ActiveRecord::Base
  attr_accessible :nombre
  has_many :equipos
  validates :nombre, :format => { :with => /^[a-zA-Z ]+$/, :message => "Solo letras estan permitidas"}
end
