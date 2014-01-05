require 'test_helper'

class PacienteEstadosControllerTest < ActionController::TestCase
  setup do
    @paciente_estado = paciente_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paciente_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente_estado" do
    assert_difference('PacienteEstado.count') do
      post :create, paciente_estado: { estadoPaciente: @paciente_estado.estadoPaciente, idEstadoPaciente: @paciente_estado.idEstadoPaciente }
    end

    assert_redirected_to paciente_estado_path(assigns(:paciente_estado))
  end

  test "should show paciente_estado" do
    get :show, id: @paciente_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente_estado
    assert_response :success
  end

  test "should update paciente_estado" do
    patch :update, id: @paciente_estado, paciente_estado: { estadoPaciente: @paciente_estado.estadoPaciente, idEstadoPaciente: @paciente_estado.idEstadoPaciente }
    assert_redirected_to paciente_estado_path(assigns(:paciente_estado))
  end

  test "should destroy paciente_estado" do
    assert_difference('PacienteEstado.count', -1) do
      delete :destroy, id: @paciente_estado
    end

    assert_redirected_to paciente_estados_path
  end
end
