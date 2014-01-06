require 'test_helper'

class AsignacionesControllerTest < ActionController::TestCase
  setup do
    @asignacione = asignaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacione" do
    assert_difference('Asignacione.count') do
      post :create, asignacione: { finFechaAsignacion: @asignacione.finFechaAsignacion, finHoraAsignacion: @asignacione.finHoraAsignacion, idArea: @asignacione.idArea, idAsignacion: @asignacione.idAsignacion, idCama: @asignacione.idCama, idPersona: @asignacione.idPersona, idSala: @asignacione.idSala, idTipoAsignacion: @asignacione.idTipoAsignacion, idUsuario: @asignacione.idUsuario, iniFechaAsignacion: @asignacione.iniFechaAsignacion, iniHoraAsignacion: @asignacione.iniHoraAsignacion, pacIdPersona: @asignacione.pacIdPersona, perIdPersona: @asignacione.perIdPersona }
    end

    assert_redirected_to asignacione_path(assigns(:asignacione))
  end

  test "should show asignacione" do
    get :show, id: @asignacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacione
    assert_response :success
  end

  test "should update asignacione" do
    patch :update, id: @asignacione, asignacione: { finFechaAsignacion: @asignacione.finFechaAsignacion, finHoraAsignacion: @asignacione.finHoraAsignacion, idArea: @asignacione.idArea, idAsignacion: @asignacione.idAsignacion, idCama: @asignacione.idCama, idPersona: @asignacione.idPersona, idSala: @asignacione.idSala, idTipoAsignacion: @asignacione.idTipoAsignacion, idUsuario: @asignacione.idUsuario, iniFechaAsignacion: @asignacione.iniFechaAsignacion, iniHoraAsignacion: @asignacione.iniHoraAsignacion, pacIdPersona: @asignacione.pacIdPersona, perIdPersona: @asignacione.perIdPersona }
    assert_redirected_to asignacione_path(assigns(:asignacione))
  end

  test "should destroy asignacione" do
    assert_difference('Asignacione.count', -1) do
      delete :destroy, id: @asignacione
    end

    assert_redirected_to asignaciones_path
  end
end
