# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
inflect.irregular 'jugador', 'jugadores'
inflect.irregular 'club', 'clubes'
inflect.irregular 'equipo_y_cuerpo_tecnico', 'equipos_y_cuerpos_tecnicos'
inflect.irregular 'equipo_y_partido', 'equipos_y_partidos'
inflect.irregular 'cancha', 'canchas'
inflect.irregular 'arbitro', 'arbitros'
inflect.irregular 'equipo', 'equipos'
inflect.irregular 'empleado_del_cuerpo_tecnico', 'empleados_del_cuerpo_tecnico'
inflect.irregular 'partido', 'partidos'
inflect.irregular 'partido_arbitro', 'partidos_arbitros'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
end
