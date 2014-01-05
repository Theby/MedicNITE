require 'test_helper'

class PersonalRubroTiposControllerTest < ActionController::TestCase
  setup do
    @personal_rubro_tipo = personal_rubro_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_rubro_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_rubro_tipo" do
    assert_difference('PersonalRubroTipo.count') do
      post :create, personal_rubro_tipo: { idTipoPersonalRubro: @personal_rubro_tipo.idTipoPersonalRubro, tipoPersonalRubro: @personal_rubro_tipo.tipoPersonalRubro }
    end

    assert_redirected_to personal_rubro_tipo_path(assigns(:personal_rubro_tipo))
  end

  test "should show personal_rubro_tipo" do
    get :show, id: @personal_rubro_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_rubro_tipo
    assert_response :success
  end

  test "should update personal_rubro_tipo" do
    patch :update, id: @personal_rubro_tipo, personal_rubro_tipo: { idTipoPersonalRubro: @personal_rubro_tipo.idTipoPersonalRubro, tipoPersonalRubro: @personal_rubro_tipo.tipoPersonalRubro }
    assert_redirected_to personal_rubro_tipo_path(assigns(:personal_rubro_tipo))
  end

  test "should destroy personal_rubro_tipo" do
    assert_difference('PersonalRubroTipo.count', -1) do
      delete :destroy, id: @personal_rubro_tipo
    end

    assert_redirected_to personal_rubro_tipos_path
  end
end
