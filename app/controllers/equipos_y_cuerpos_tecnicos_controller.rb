class EquiposYCuerposTecnicosController < ApplicationController
  # GET /equipos_y_cuerpos_tecnicos
  # GET /equipos_y_cuerpos_tecnicos.json
  def index
    @equipos_y_cuerpos_tecnicos = EquipoYCuerpoTecnico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipos_y_cuerpos_tecnicos }
    end
  end

  # GET /equipos_y_cuerpos_tecnicos/1
  # GET /equipos_y_cuerpos_tecnicos/1.json
  def show
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.find(params[:id])
    @clubes = Club.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo_y_cuerpo_tecnico }
    end
  end

  # GET /equipos_y_cuerpos_tecnicos/new
  # GET /equipos_y_cuerpos_tecnicos/new.json
  def new
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.new
    @clubes = Club.all

    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo_y_cuerpo_tecnico }
    end
  end

  # GET /equipos_y_cuerpos_tecnicos/1/edit
  def edit
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.find(params[:id])
    @clubes = Club.all

  end

  # POST /equipos_y_cuerpos_tecnicos
  # POST /equipos_y_cuerpos_tecnicos.json
  def create
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.new(params[:equipo_y_cuerpo_tecnico])
    @clubes = Club.all

      
    respond_to do |format|
      if @equipo_y_cuerpo_tecnico.save
        format.html { redirect_to @equipo_y_cuerpo_tecnico, notice: 'Equipo y cuerpo tecnico se ha creado correctamente.' }
        format.json { render json: @equipo_y_cuerpo_tecnico, status: :created, location: @equipo_y_cuerpo_tecnico }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo_y_cuerpo_tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipos_y_cuerpos_tecnicos/1
  # PUT /equipos_y_cuerpos_tecnicos/1.json
  def update
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.find(params[:id])
    @clubes = Club.all

    
    respond_to do |format|
      if @equipo_y_cuerpo_tecnico.update_attributes(params[:equipo_y_cuerpo_tecnico])
        format.html { redirect_to @equipo_y_cuerpo_tecnico, notice: 'Equipo y cuerpo tecnico fue modificado adecuadamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo_y_cuerpo_tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos_y_cuerpos_tecnicos/1
  # DELETE /equipos_y_cuerpos_tecnicos/1.json
  def destroy
    @equipo_y_cuerpo_tecnico = EquipoYCuerpoTecnico.find(params[:id])
    @equipo_y_cuerpo_tecnico.destroy
    @clubes = Club.all
   
    
    respond_to do |format|
      format.html { redirect_to equipos_y_cuerpos_tecnicos_url }
      format.json { head :no_content }
    end
  end
end
