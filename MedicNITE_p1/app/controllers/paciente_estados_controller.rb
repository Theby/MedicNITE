class PacienteEstadosController < ApplicationController
  before_action :set_paciente_estado, only: [:show, :edit, :update, :destroy]

  # GET /paciente_estados
  # GET /paciente_estados.json
  def index
    @paciente_estados = PacienteEstado.all
  end

  # GET /paciente_estados/1
  # GET /paciente_estados/1.json
  def show
  end

  # GET /paciente_estados/new
  def new
    @paciente_estado = PacienteEstado.new
  end

  # GET /paciente_estados/1/edit
  def edit
  end

  # POST /paciente_estados
  # POST /paciente_estados.json
  def create
    @paciente_estado = PacienteEstado.new(paciente_estado_params)

    respond_to do |format|
      if @paciente_estado.save
        format.html { redirect_to @paciente_estado, notice: 'Paciente estado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paciente_estado }
      else
        format.html { render action: 'new' }
        format.json { render json: @paciente_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paciente_estados/1
  # PATCH/PUT /paciente_estados/1.json
  def update
    respond_to do |format|
      if @paciente_estado.update(paciente_estado_params)
        format.html { redirect_to @paciente_estado, notice: 'Paciente estado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paciente_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_estados/1
  # DELETE /paciente_estados/1.json
  def destroy
    @paciente_estado.destroy
    respond_to do |format|
      format.html { redirect_to paciente_estados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_estado
      @paciente_estado = PacienteEstado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_estado_params
      params.require(:paciente_estado).permit(:idEstadoPaciente, :estadoPaciente)
    end
end
