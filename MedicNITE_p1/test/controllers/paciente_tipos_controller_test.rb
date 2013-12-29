require 'test_helper'

class PacienteTiposControllerTest < ActionController::TestCase
  setup do
    @paciente_tipo = paciente_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paciente_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente_tipo" do
    assert_difference('PacienteTipo.count') do
      post :create, paciente_tipo: { idTipoPaciente: @paciente_tipo.idTipoPaciente, tipoPaciente: @paciente_tipo.tipoPaciente }
    end

    assert_redirected_to paciente_tipo_path(assigns(:paciente_tipo))
  end

  test "should show paciente_tipo" do
    get :show, id: @paciente_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente_tipo
    assert_response :success
  end

  test "should update paciente_tipo" do
    patch :update, id: @paciente_tipo, paciente_tipo: { idTipoPaciente: @paciente_tipo.idTipoPaciente, tipoPaciente: @paciente_tipo.tipoPaciente }
    assert_redirected_to paciente_tipo_path(assigns(:paciente_tipo))
  end

  test "should destroy paciente_tipo" do
    assert_difference('PacienteTipo.count', -1) do
      delete :destroy, id: @paciente_tipo
    end

    assert_redirected_to paciente_tipos_path
  end
end
