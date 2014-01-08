require 'test_helper'

class DesocupamientoRecintosControllerTest < ActionController::TestCase
  setup do
    @desocupamiento_recinto = desocupamiento_recintos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desocupamiento_recintos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desocupamiento_recinto" do
    assert_difference('DesocupamientoRecinto.count') do
      post :create, desocupamiento_recinto: { fechaDesocupamiento: @desocupamiento_recinto.fechaDesocupamiento, horaDesocupamiento: @desocupamiento_recinto.horaDesocupamiento, idAsignacion: @desocupamiento_recinto.idAsignacion, idDesocupamientoRecinto: @desocupamiento_recinto.idDesocupamientoRecinto }
    end

    assert_redirected_to desocupamiento_recinto_path(assigns(:desocupamiento_recinto))
  end

  test "should show desocupamiento_recinto" do
    get :show, id: @desocupamiento_recinto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desocupamiento_recinto
    assert_response :success
  end

  test "should update desocupamiento_recinto" do
    patch :update, id: @desocupamiento_recinto, desocupamiento_recinto: { fechaDesocupamiento: @desocupamiento_recinto.fechaDesocupamiento, horaDesocupamiento: @desocupamiento_recinto.horaDesocupamiento, idAsignacion: @desocupamiento_recinto.idAsignacion, idDesocupamientoRecinto: @desocupamiento_recinto.idDesocupamientoRecinto }
    assert_redirected_to desocupamiento_recinto_path(assigns(:desocupamiento_recinto))
  end

  test "should destroy desocupamiento_recinto" do
    assert_difference('DesocupamientoRecinto.count', -1) do
      delete :destroy, id: @desocupamiento_recinto
    end

    assert_redirected_to desocupamiento_recintos_path
  end
end
