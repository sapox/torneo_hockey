class EmpleadosDelCuerpoTecnicoController < ApplicationController
  # GET /empleados_del_cuerpo_tecnico
  # GET /empleados_del_cuerpo_tecnico.json
  def index
    @empleados_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empleados_del_cuerpo_tecnico }
    end
  end

  # GET /empleados_del_cuerpo_tecnico/1
  # GET /empleados_del_cuerpo_tecnico/1.json
  def show
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empleado_del_cuerpo_tecnico }
    end
  end

  # GET /empleados_del_cuerpo_tecnico/new
  # GET /empleados_del_cuerpo_tecnico/new.json
  def new
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empleado_del_cuerpo_tecnico }
    end
  end

  # GET /empleados_del_cuerpo_tecnico/1/edit
  def edit
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.find(params[:id])
  end

  # POST /empleados_del_cuerpo_tecnico
  # POST /empleados_del_cuerpo_tecnico.json
  def create
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.new(params[:empleado_del_cuerpo_tecnico])

    respond_to do |format|
      if @empleado_del_cuerpo_tecnico.save
        format.html { redirect_to @empleado_del_cuerpo_tecnico, notice: 'Empleado del cuerpo tecnico se ha creado correctamente.' }
        format.json { render json: @empleado_del_cuerpo_tecnico, status: :created, location: @empleado_del_cuerpo_tecnico }
      else
        format.html { render action: "new" }
        format.json { render json: @empleado_del_cuerpo_tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empleados_del_cuerpo_tecnico/1
  # PUT /empleados_del_cuerpo_tecnico/1.json
  def update
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.find(params[:id])

    respond_to do |format|
      if @empleado_del_cuerpo_tecnico.update_attributes(params[:empleado_del_cuerpo_tecnico])
        format.html { redirect_to @empleado_del_cuerpo_tecnico, notice: 'Empleado del cuerpo tecnico fue modificado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @empleado_del_cuerpo_tecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados_del_cuerpo_tecnico/1
  # DELETE /empleados_del_cuerpo_tecnico/1.json
  def destroy
    @empleado_del_cuerpo_tecnico = EmpleadoDelCuerpoTecnico.find(params[:id])
    @empleado_del_cuerpo_tecnico.destroy

    respond_to do |format|
      format.html { redirect_to empleados_del_cuerpo_tecnico_url }
      format.json { head :no_content }
    end
  end
end
