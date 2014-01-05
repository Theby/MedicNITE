require 'test_helper'

class AsignacionTiposControllerTest < ActionController::TestCase
  setup do
    @asignacion_tipo = asignacion_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignacion_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacion_tipo" do
    assert_difference('AsignacionTipo.count') do
      post :create, asignacion_tipo: { idTipoAsignacion: @asignacion_tipo.idTipoAsignacion, tipoAsignacion: @asignacion_tipo.tipoAsignacion }
    end

    assert_redirected_to asignacion_tipo_path(assigns(:asignacion_tipo))
  end

  test "should show asignacion_tipo" do
    get :show, id: @asignacion_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacion_tipo
    assert_response :success
  end

  test "should update asignacion_tipo" do
    patch :update, id: @asignacion_tipo, asignacion_tipo: { idTipoAsignacion: @asignacion_tipo.idTipoAsignacion, tipoAsignacion: @asignacion_tipo.tipoAsignacion }
    assert_redirected_to asignacion_tipo_path(assigns(:asignacion_tipo))
  end

  test "should destroy asignacion_tipo" do
    assert_difference('AsignacionTipo.count', -1) do
      delete :destroy, id: @asignacion_tipo
    end

    assert_redirected_to asignacion_tipos_path
  end
end
