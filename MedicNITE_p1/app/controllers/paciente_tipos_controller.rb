class PacienteTiposController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_paciente_tipo, only: [:show, :edit, :update, :destroy]

  # GET /paciente_tipos
  # GET /paciente_tipos.json
  def index
    @paciente_tipos = PacienteTipo.all
  end

  # GET /paciente_tipos/1
  # GET /paciente_tipos/1.json
  def show
  end

  # GET /paciente_tipos/new
  def new
    @paciente_tipo = PacienteTipo.new
  end

  # GET /paciente_tipos/1/edit
  def edit
  end

  # POST /paciente_tipos
  # POST /paciente_tipos.json
  def create
    @paciente_tipo = PacienteTipo.new(paciente_tipo_params)

    respond_to do |format|
      if @paciente_tipo.save
        format.html { redirect_to @paciente_tipo, notice: 'Paciente tipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paciente_tipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @paciente_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paciente_tipos/1
  # PATCH/PUT /paciente_tipos/1.json
  def update
    respond_to do |format|
      if @paciente_tipo.update(paciente_tipo_params)
        format.html { redirect_to @paciente_tipo, notice: 'Paciente tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paciente_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_tipos/1
  # DELETE /paciente_tipos/1.json
  def destroy
    @paciente_tipo.destroy
    respond_to do |format|
      format.html { redirect_to paciente_tipos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_tipo
      @paciente_tipo = PacienteTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_tipo_params
      params.require(:paciente_tipo).permit(:idTipoPaciente, :tipoPaciente)
    end
end
