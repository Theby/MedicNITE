class HabitacionsController < ApplicationController
  before_action :set_habitacion, only: [:show, :edit, :update, :destroy]

  # GET /habitacions
  # GET /habitacions.json
  def index
    @habitacions = Habitacion.all
  end

  # GET /habitacions/1
  # GET /habitacions/1.json
  def show
  end

  # GET /habitacions/new
  def new
    @habitacion = Habitacion.new

    @salas = Sala.search(params[:searchsala]).paginate(:page => params[:page], :per_page => 5)
  end

  # GET /habitacions/1/edit
  def edit
  end

  # POST /habitacions
  # POST /habitacions.json
  def create
    @habitacion = Habitacion.new(habitacion_params)

    respond_to do |format|
      if @habitacion.save
        format.html { redirect_to @habitacion, notice: 'Habitacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @habitacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitacions/1
  # PATCH/PUT /habitacions/1.json
  def update
    respond_to do |format|
      if @habitacion.update(habitacion_params)
        format.html { redirect_to @habitacion, notice: 'Habitacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitacions/1
  # DELETE /habitacions/1.json
  def destroy
    @habitacion.destroy
    respond_to do |format|
      format.html { redirect_to habitacions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitacion
      @habitacion = Habitacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habitacion_params
      params.require(:habitacion).permit(:idHabitacion, :idSala, :codVisibleHabitacion, :tipoHabitacion, :capacidadHabitacion, :estadoHabitacion)
    end
end
