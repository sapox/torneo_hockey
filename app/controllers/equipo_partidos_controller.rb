class EquipoPartidosController < ApplicationController
  # GET /equipo_partidos
  # GET /equipo_partidos.json
  def index
    @equipo_partidos = EquipoPartido.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipo_partidos }
    end
  end

  # GET /equipo_partidos/1
  # GET /equipo_partidos/1.json
  def show
    @equipo_partido = EquipoPartido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo_partido }
    end
  end

  # GET /equipo_partidos/new
  # GET /equipo_partidos/new.json
  def new
    @equipo_partido = EquipoPartido.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo_partido }
    end
  end

  # GET /equipo_partidos/1/edit
  def edit
    @equipo_partido = EquipoPartido.find(params[:id])
  end

  # POST /equipo_partidos
  # POST /equipo_partidos.json
  def create
    @equipo_partido = EquipoPartido.new(params[:equipo_partido])

    respond_to do |format|
      if @equipo_partido.save
        format.html { redirect_to @equipo_partido, notice: 'Equipo partido se han creado correctamente.' }
        format.json { render json: @equipo_partido, status: :created, location: @equipo_partido }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo_partido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipo_partidos/1
  # PUT /equipo_partidos/1.json
  def update
    @equipo_partido = EquipoPartido.find(params[:id])

    respond_to do |format|
      if @equipo_partido.update_attributes(params[:equipo_partido])
        format.html { redirect_to @equipo_partido, notice: 'Equipo partido fue correctamente modificado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo_partido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipo_partidos/1
  # DELETE /equipo_partidos/1.json
  def destroy
    @equipo_partido = EquipoPartido.find(params[:id])
    @equipo_partido.destroy

    respond_to do |format|
      format.html { redirect_to equipo_partidos_url }
      format.json { head :no_content }
    end
  end
end
