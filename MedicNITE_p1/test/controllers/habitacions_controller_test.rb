require 'test_helper'

class HabitacionsControllerTest < ActionController::TestCase
  setup do
    @habitacion = habitacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habitacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habitacion" do
    assert_difference('Habitacion.count') do
      post :create, habitacion: { capacidadHabitacion: @habitacion.capacidadHabitacion, codVisibleHabitacion: @habitacion.codVisibleHabitacion, estadoHabitacion: @habitacion.estadoHabitacion, idHabitacion: @habitacion.idHabitacion, idSala: @habitacion.idSala, tipoHabitacion: @habitacion.tipoHabitacion }
    end

    assert_redirected_to habitacion_path(assigns(:habitacion))
  end

  test "should show habitacion" do
    get :show, id: @habitacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habitacion
    assert_response :success
  end

  test "should update habitacion" do
    patch :update, id: @habitacion, habitacion: { capacidadHabitacion: @habitacion.capacidadHabitacion, codVisibleHabitacion: @habitacion.codVisibleHabitacion, estadoHabitacion: @habitacion.estadoHabitacion, idHabitacion: @habitacion.idHabitacion, idSala: @habitacion.idSala, tipoHabitacion: @habitacion.tipoHabitacion }
    assert_redirected_to habitacion_path(assigns(:habitacion))
  end

  test "should destroy habitacion" do
    assert_difference('Habitacion.count', -1) do
      delete :destroy, id: @habitacion
    end

    assert_redirected_to habitacions_path
  end
end
