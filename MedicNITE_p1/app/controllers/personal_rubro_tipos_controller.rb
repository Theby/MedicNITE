class PersonalRubroTiposController < ApplicationController
  before_action :set_personal_rubro_tipo, only: [:show, :edit, :update, :destroy]

  # GET /personal_rubro_tipos
  # GET /personal_rubro_tipos.json
  def index
    @personal_rubro_tipos = PersonalRubroTipo.all
  end

  # GET /personal_rubro_tipos/1
  # GET /personal_rubro_tipos/1.json
  def show
  end

  # GET /personal_rubro_tipos/new
  def new
    @personal_rubro_tipo = PersonalRubroTipo.new
  end

  # GET /personal_rubro_tipos/1/edit
  def edit
  end

  # POST /personal_rubro_tipos
  # POST /personal_rubro_tipos.json
  def create
    @personal_rubro_tipo = PersonalRubroTipo.new(personal_rubro_tipo_params)

    respond_to do |format|
      if @personal_rubro_tipo.save
        format.html { redirect_to @personal_rubro_tipo, notice: 'Personal rubro tipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personal_rubro_tipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @personal_rubro_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_rubro_tipos/1
  # PATCH/PUT /personal_rubro_tipos/1.json
  def update
    respond_to do |format|
      if @personal_rubro_tipo.update(personal_rubro_tipo_params)
        format.html { redirect_to @personal_rubro_tipo, notice: 'Personal rubro tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personal_rubro_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_rubro_tipos/1
  # DELETE /personal_rubro_tipos/1.json
  def destroy
    @personal_rubro_tipo.destroy
    respond_to do |format|
      format.html { redirect_to personal_rubro_tipos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_rubro_tipo
      @personal_rubro_tipo = PersonalRubroTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_rubro_tipo_params
      params.require(:personal_rubro_tipo).permit(:idTipoPersonalRubro, :tipoPersonalRubro)
    end
end
