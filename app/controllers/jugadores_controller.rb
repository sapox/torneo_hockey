class JugadoresController < ApplicationController
  # GET /jugadores
  # GET /jugadores.json
  def index
    @jugadores = Jugador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jugadores }
    end
  end

  # GET /jugadores/1
  # GET /jugadores/1.json
  def show
    @jugador = Jugador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jugador }
    end
  end

  # GET /jugadores/new
  # GET /jugadores/new.json
  def new
    @jugador = Jugador.new
    @clubes = Club.all
    @equipos = Equipo.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jugador }
    end
  end

  # GET /jugadores/1/edit
  def edit
    @jugador = Jugador.find(params[:id])
    @clubes = Club.all
    @equipos = Equipo.all  
  end

  # POST /jugadores
  # POST /jugadores.json
  def create
    @jugador = Jugador.new(params[:jugador])
    @clubes = Club.all
    @equipos = Equipo.all
    respond_to do |format|
      if @jugador.save
        format.html { redirect_to @jugador, notice: 'Jugador se ha creado correctamente.' }
        format.json { render json: @jugador, status: :created, location: @jugador }
      else
        format.html { render action: "new" }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jugadores/1
  # PUT /jugadores/1.json
  def update
    @jugador = Jugador.find(params[:id])
    @clubes = Club.all
    @equipos = Equipo.all
    respond_to do |format|
      if @jugador.update_attributes(params[:jugador])
        format.html { redirect_to @jugador, notice: 'Jugador fue actualizado adecuadamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jugadores/1
  # DELETE /jugadores/1.json
  def destroy
    @jugador = Jugador.find(params[:id])
    @jugador.destroy
    @clubes = Club.all
    @equipos = Equipo.all
    respond_to do |format|
      format.html { redirect_to jugadores_url }
      format.json { head :no_content }
    end
  end
end
