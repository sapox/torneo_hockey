require 'test_helper'

class EquiposControllerTest < ActionController::TestCase
  setup do
    @equipo = equipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo" do
    assert_difference('Equipo.count') do
      post :create, equipo: { cantidad_de_derrotas: @equipo.cantidad_de_derrotas, cantidad_de_empates: @equipo.cantidad_de_empates, cantidad_de_victorias: @equipo.cantidad_de_victorias, categoria: @equipo.categoria, sexo: @equipo.sexo }
    end

    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should show equipo" do
    get :show, id: @equipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo
    assert_response :success
  end

  test "should update equipo" do
    put :update, id: @equipo, equipo: { cantidad_de_derrotas: @equipo.cantidad_de_derrotas, cantidad_de_empates: @equipo.cantidad_de_empates, cantidad_de_victorias: @equipo.cantidad_de_victorias, categoria: @equipo.categoria, sexo: @equipo.sexo }
    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should destroy equipo" do
    assert_difference('Equipo.count', -1) do
      delete :destroy, id: @equipo
    end

    assert_redirected_to equipos_path
  end
end
