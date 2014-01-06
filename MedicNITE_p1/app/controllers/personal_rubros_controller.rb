class PersonalRubrosController < ApplicationController
  before_filter :authenticate_usuario!
  before_action :set_personal_rubro, only: [:show, :edit, :update, :destroy]

  # GET /personal_rubros
  # GET /personal_rubros.json
  def index
    @personal_rubros = PersonalRubro.all
  end

  # GET /personal_rubros/1
  # GET /personal_rubros/1.json
  def show
  end

  # GET /personal_rubros/new
  def new
    @personal_rubro = PersonalRubro.new

    @personal_rubro_personas = Persona.search(params[:searchpersona]).paginate(:page => params[:page], :per_page => 5)
    @personal_rubro_tipos = PersonalRubroTipo.all
    @areas = Area.all

  end

  # GET /personal_rubros/1/edit
  def edit
  end

  # POST /personal_rubros
  # POST /personal_rubros.json
  def create
    @personal_rubro = PersonalRubro.new(personal_rubro_params)

    respond_to do |format|
      if @personal_rubro.save
        format.html { redirect_to @personal_rubro, notice: 'Personal rubro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personal_rubro }
      else
        format.html { render action: 'new' }
        format.json { render json: @personal_rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_rubros/1
  # PATCH/PUT /personal_rubros/1.json
  def update
    respond_to do |format|
      if @personal_rubro.update(personal_rubro_params)
        format.html { redirect_to @personal_rubro, notice: 'Personal rubro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personal_rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_rubros/1
  # DELETE /personal_rubros/1.json
  def destroy
    @personal_rubro.destroy
    respond_to do |format|
      format.html { redirect_to personal_rubros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_rubro
      @personal_rubro = PersonalRubro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_rubro_params
      params.require(:personal_rubro).permit(:idPersona, :idTipoPersonalRubro, :especialidadPersonalRubro)
    end
end
