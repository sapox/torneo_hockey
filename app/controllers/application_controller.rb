class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :only => [:show, :index, :index, :arbitros, :canchas, :clubes, :empleados_del_cuerpo_tecnico, :equipo_partidos, :equipos, :equipos_y_cuerpos_tecnicos, :jugadores, :partidos, :partidos_arbitros]
  #before_filter :authenticate_admin!, :except => [:show, :index, :arbitros, :canchas, :clubes, :empleados_del_cuerpo_tecnico, :equipo_partidos, :equipos, :equipos_y_cuerpos_tecnicos, :jugadores, :partidos, :partidos_arbitros, :listado_categoria]
  #before_filter :authenticate_admin!, :except => [:edit, :index, :arbitros, :canchas, :clubes, :empleados_del_cuerpo_tecnico, :equipo_partidos, :equipos, :equipos_y_cuerpos_tecnicos, :jugadores, :partidos, :partidos_arbitros, :listado_categoria]
  #before_filter :authenticate_admin!, :except => [:destroy, :index, :arbitros, :canchas, :clubes, :empleados_del_cuerpo_tecnico, :equipo_partidos, :equipos, :equipos_y_cuerpos_tecnicos, :jugadores, :partidos, :partidos_arbitros, :listado_categoria]  
  
end
