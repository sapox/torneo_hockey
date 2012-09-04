class ClubesController < ApplicationController
  # GET /clubes
  # GET /clubes.json
  def index
    @clubes = Club.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clubes }
    end
  end

  # GET /clubes/1
  # GET /clubes/1.json
  def show
    @club = Club.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @club }
    end
  end

  # GET /clubes/new
  # GET /clubes/new.json
  def new
    @club = Club.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @club }
    end
  end

  # GET /clubes/1/edit
  def edit
    @club = Club.find(params[:id])
  end

  # POST /clubes
  # POST /clubes.json
  def create
    @club = Club.new(params[:club])

    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'El Club se ha creado correctamente.' }
        format.json { render json: @club, status: :created, location: @club }
      else
        format.html { render action: "new" }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clubes/1
  # PUT /clubes/1.json
  def update
    @club = Club.find(params[:id])

    respond_to do |format|
      if @club.update_attributes(params[:club])
        format.html { redirect_to @club, notice: 'Club fue modificado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubes/1
  # DELETE /clubes/1.json
  def destroy
    @club = Club.find(params[:id])
    @club.destroy

    respond_to do |format|
      format.html { redirect_to clubes_url }
      format.json { head :no_content }
    end
  end
end
