class EquipoYCuerpoTecnico < ActiveRecord::Base
  attr_accessible :codigo_club_id, :empleado_del_cuerpo_tecnico_id, :puesto
  belongs_to :empleado_del_cuerpo_tecnico
  belongs_to :equipo

end
