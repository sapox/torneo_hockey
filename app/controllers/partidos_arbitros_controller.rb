class PartidosArbitrosController < ApplicationController
  # GET /partidos_arbitros
  # GET /partidos_arbitros.json
  def index
    @partidos_arbitros = PartidoArbitro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partidos_arbitros }
    end
  end

  # GET /partidos_arbitros/1
  # GET /partidos_arbitros/1.json
  def show
    @partido_arbitro = PartidoArbitro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partido_arbitro }
    end
  end

  # GET /partidos_arbitros/new
  # GET /partidos_arbitros/new.json
  def new
    @partido_arbitro = PartidoArbitro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partido_arbitro }
    end
  end

  # GET /partidos_arbitros/1/edit
  def edit
    @partido_arbitro = PartidoArbitro.find(params[:id])
  end

  # POST /partidos_arbitros
  # POST /partidos_arbitros.json
  def create
    @partido_arbitro = PartidoArbitro.new(params[:partido_arbitro])

    respond_to do |format|
      if @partido_arbitro.save
        format.html { redirect_to @partido_arbitro, notice: 'Partido arbitro was successfully created.' }
        format.json { render json: @partido_arbitro, status: :created, location: @partido_arbitro }
      else
        format.html { render action: "new" }
        format.json { render json: @partido_arbitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partidos_arbitros/1
  # PUT /partidos_arbitros/1.json
  def update
    @partido_arbitro = PartidoArbitro.find(params[:id])

    respond_to do |format|
      if @partido_arbitro.update_attributes(params[:partido_arbitro])
        format.html { redirect_to @partido_arbitro, notice: 'Partido arbitro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partido_arbitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partidos_arbitros/1
  # DELETE /partidos_arbitros/1.json
  def destroy
    @partido_arbitro = PartidoArbitro.find(params[:id])
    @partido_arbitro.destroy

    respond_to do |format|
      format.html { redirect_to partidos_arbitros_url }
      format.json { head :no_content }
    end
  end
end
