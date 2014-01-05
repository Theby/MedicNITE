require 'test_helper'

class CamasControllerTest < ActionController::TestCase
  setup do
    @cama = camas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cama" do
    assert_difference('Cama.count') do
      post :create, cama: { codVisibleCama: @cama.codVisibleCama, estadoCama: @cama.estadoCama, idArea: @cama.idArea, idCama: @cama.idCama, idHabitacion: @cama.idHabitacion, idSala: @cama.idSala, tipoCama: @cama.tipoCama }
    end

    assert_redirected_to cama_path(assigns(:cama))
  end

  test "should show cama" do
    get :show, id: @cama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cama
    assert_response :success
  end

  test "should update cama" do
    patch :update, id: @cama, cama: { codVisibleCama: @cama.codVisibleCama, estadoCama: @cama.estadoCama, idArea: @cama.idArea, idCama: @cama.idCama, idHabitacion: @cama.idHabitacion, idSala: @cama.idSala, tipoCama: @cama.tipoCama }
    assert_redirected_to cama_path(assigns(:cama))
  end

  test "should destroy cama" do
    assert_difference('Cama.count', -1) do
      delete :destroy, id: @cama
    end

    assert_redirected_to camas_path
  end
end
