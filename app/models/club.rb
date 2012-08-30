class Club < ActiveRecord::Base
  attr_accessible :nombre
  has_many :equipos
end
