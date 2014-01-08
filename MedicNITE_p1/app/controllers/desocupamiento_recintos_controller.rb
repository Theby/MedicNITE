class DesocupamientoRecintosController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_desocupamiento_recinto, only: [:show, :edit, :update, :destroy]

  # GET /desocupamiento_recintos
  # GET /desocupamiento_recintos.json
  def index
    @desocupamiento_recintos = DesocupamientoRecinto.all
  end

  # GET /desocupamiento_recintos/1
  # GET /desocupamiento_recintos/1.json
  def show
  end

  # GET /desocupamiento_recintos/new
  def new
    @desocupamiento_recinto = DesocupamientoRecinto.new
  end

  # GET /desocupamiento_recintos/1/edit
  def edit
  end

  # POST /desocupamiento_recintos
  # POST /desocupamiento_recintos.json
  def create
    @desocupamiento_recinto = DesocupamientoRecinto.new(desocupamiento_recinto_params)

    respond_to do |format|
      if @desocupamiento_recinto.save
        format.html { redirect_to @desocupamiento_recinto, notice: 'Desocupamiento recinto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @desocupamiento_recinto }
      else
        format.html { render action: 'new' }
        format.json { render json: @desocupamiento_recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desocupamiento_recintos/1
  # PATCH/PUT /desocupamiento_recintos/1.json
  def update
    respond_to do |format|
      if @desocupamiento_recinto.update(desocupamiento_recinto_params)
        format.html { redirect_to @desocupamiento_recinto, notice: 'Desocupamiento recinto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @desocupamiento_recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desocupamiento_recintos/1
  # DELETE /desocupamiento_recintos/1.json
  def destroy
    @desocupamiento_recinto.destroy
    respond_to do |format|
      format.html { redirect_to desocupamiento_recintos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desocupamiento_recinto
      @desocupamiento_recinto = DesocupamientoRecinto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desocupamiento_recinto_params
      params.require(:desocupamiento_recinto).permit(:idDesocupamientoRecinto, :idAsignacion, :fechaDesocupamiento, :horaDesocupamiento)
    end
end
