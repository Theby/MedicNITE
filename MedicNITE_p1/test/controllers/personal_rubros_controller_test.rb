require 'test_helper'

class PersonalRubrosControllerTest < ActionController::TestCase
  setup do
    @personal_rubro = personal_rubros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_rubros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_rubro" do
    assert_difference('PersonalRubro.count') do
      post :create, personal_rubro: { especialidadPersonalRubro: @personal_rubro.especialidadPersonalRubro, idPersona: @personal_rubro.idPersona, idTipoPersonalRubro: @personal_rubro.idTipoPersonalRubro }
    end

    assert_redirected_to personal_rubro_path(assigns(:personal_rubro))
  end

  test "should show personal_rubro" do
    get :show, id: @personal_rubro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_rubro
    assert_response :success
  end

  test "should update personal_rubro" do
    patch :update, id: @personal_rubro, personal_rubro: { especialidadPersonalRubro: @personal_rubro.especialidadPersonalRubro, idPersona: @personal_rubro.idPersona, idTipoPersonalRubro: @personal_rubro.idTipoPersonalRubro }
    assert_redirected_to personal_rubro_path(assigns(:personal_rubro))
  end

  test "should destroy personal_rubro" do
    assert_difference('PersonalRubro.count', -1) do
      delete :destroy, id: @personal_rubro
    end

    assert_redirected_to personal_rubros_path
  end
end
