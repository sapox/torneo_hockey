require 'test_helper'

class EquipoPartidosControllerTest < ActionController::TestCase
  setup do
    @equipo_partido = equipo_partidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipo_partidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo_partido" do
    assert_difference('EquipoPartido.count') do
      post :create, equipo_partido: { cantidad_de_goles: @equipo_partido.cantidad_de_goles, equipo_id: @equipo_partido.equipo_id, partido_id: @equipo_partido.partido_id }
    end

    assert_redirected_to equipo_partido_path(assigns(:equipo_partido))
  end

  test "should show equipo_partido" do
    get :show, id: @equipo_partido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo_partido
    assert_response :success
  end

  test "should update equipo_partido" do
    put :update, id: @equipo_partido, equipo_partido: { cantidad_de_goles: @equipo_partido.cantidad_de_goles, equipo_id: @equipo_partido.equipo_id, partido_id: @equipo_partido.partido_id }
    assert_redirected_to equipo_partido_path(assigns(:equipo_partido))
  end

  test "should destroy equipo_partido" do
    assert_difference('EquipoPartido.count', -1) do
      delete :destroy, id: @equipo_partido
    end

    assert_redirected_to equipo_partidos_path
  end
end
