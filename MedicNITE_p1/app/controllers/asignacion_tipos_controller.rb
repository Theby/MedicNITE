class AsignacionTiposController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_asignacion_tipo, only: [:show, :edit, :update, :destroy]

  # GET /asignacion_tipos
  # GET /asignacion_tipos.json
  def index
    @asignacion_tipos = AsignacionTipo.all
  end

  # GET /asignacion_tipos/1
  # GET /asignacion_tipos/1.json
  def show
  end

  # GET /asignacion_tipos/new
  def new
    @asignacion_tipo = AsignacionTipo.new
  end

  # GET /asignacion_tipos/1/edit
  def edit
  end

  # POST /asignacion_tipos
  # POST /asignacion_tipos.json
  def create
    @asignacion_tipo = AsignacionTipo.new(asignacion_tipo_params)

    respond_to do |format|
      if @asignacion_tipo.save
        format.html { redirect_to @asignacion_tipo, notice: 'Asignacion tipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @asignacion_tipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @asignacion_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignacion_tipos/1
  # PATCH/PUT /asignacion_tipos/1.json
  def update
    respond_to do |format|
      if @asignacion_tipo.update(asignacion_tipo_params)
        format.html { redirect_to @asignacion_tipo, notice: 'Asignacion tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asignacion_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_tipos/1
  # DELETE /asignacion_tipos/1.json
  def destroy
    @asignacion_tipo.destroy
    respond_to do |format|
      format.html { redirect_to asignacion_tipos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacion_tipo
      @asignacion_tipo = AsignacionTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacion_tipo_params
      params.require(:asignacion_tipo).permit(:idTipoAsignacion, :tipoAsignacion)
    end
end
