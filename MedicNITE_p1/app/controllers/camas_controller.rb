class CamasController < ApplicationController
  before_action :set_cama, only: [:show, :edit, :update, :destroy]

  # GET /camas
  # GET /camas.json
  def index
    @camas = Cama.all
  end

  # GET /camas/1
  # GET /camas/1.json
  def show
  end

  # GET /camas/new
  def new
    @cama = Cama.new
  end

  # GET /camas/1/edit
  def edit
  end

  # POST /camas
  # POST /camas.json
  def create
    @cama = Cama.new(cama_params)

    respond_to do |format|
      if @cama.save
        format.html { redirect_to @cama, notice: 'Cama was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cama }
      else
        format.html { render action: 'new' }
        format.json { render json: @cama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camas/1
  # PATCH/PUT /camas/1.json
  def update
    respond_to do |format|
      if @cama.update(cama_params)
        format.html { redirect_to @cama, notice: 'Cama was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camas/1
  # DELETE /camas/1.json
  def destroy
    @cama.destroy
    respond_to do |format|
      format.html { redirect_to camas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cama
      @cama = Cama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cama_params
      params.require(:cama).permit(:idCama, :idArea, :idHabitacion, :idSala, :codVisibleCama, :estadoCama, :tipoCama)
    end
end
