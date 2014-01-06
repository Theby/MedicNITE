class AsignacionesController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_asignacione, only: [:show, :edit, :update, :destroy]

  # GET /asignaciones
  # GET /asignaciones.json
  def index
    @asignaciones = Asignacione.all
  end

  # GET /asignaciones/1
  # GET /asignaciones/1.json
  def show
  end

  # GET /asignaciones/new
  def new 
    @asignacione = Asignacione.new

    @pacientes = Paciente.all
  end

  # GET /asignaciones/1/edit
  def edit
  end

  # POST /asignaciones
  # POST /asignaciones.json
  def create
    @asignacione = Asignacione.new(asignacione_params)

    # Al asignar una cama, cambiar agributo estadoCama = "Ocupada".
    @cama = Cama.find(@asignacione.idCama)
    if @cama != nil
      @cama.estadoCama = "Ocupada"
      @cama.save
    end        
    # Y si tiene una habitación asociada, tambien se marca como "Ocupada"
    @habitacion = Habitacion.find(@cama.idHabitacion)
    if @habitacion != nil
      @habitacion.estadoHabitacion = "Ocupada"
      @habitacion.save  
    end

    respond_to do |format|
      if @asignacione.save
        format.html { redirect_to @asignacione, notice: 'Asignacione was successfully created.' }
        format.json { render action: 'show', status: :created, location: @asignacione }
      else
        format.html { render action: 'new' }
        format.json { render json: @asignacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignaciones/1
  # PATCH/PUT /asignaciones/1.json
  def update
    respond_to do |format|
      if @asignacione.update(asignacione_params)
        format.html { redirect_to @asignacione, notice: 'Asignacione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asignacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaciones/1
  # DELETE /asignaciones/1.json
  def destroy
    @asignacione.destroy
    respond_to do |format|
      format.html { redirect_to asignaciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacione
      @asignacione = Asignacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacione_params
      params.require(:asignacione).permit(:idAsignacion, :perIdPersona, :pacIdPersona, :idPersona, :idUsuario, :idSala, :idTipoAsignacion, :idCama, :idArea, :iniFechaAsignacion, :iniHoraAsignacion, :finFechaAsignacion, :finHoraAsignacion)
    end
end
