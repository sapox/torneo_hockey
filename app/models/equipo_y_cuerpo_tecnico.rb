class EquipoYCuerpoTecnico < ActiveRecord::Base
  attr_accessible :codigo_club_id, :empleado_del_cuerpo_tecnico_id, :puesto, :equipo_id
  belongs_to :empleado_del_cuerpo_tecnico
  belongs_to :equipo

end
