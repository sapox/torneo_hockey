require 'test_helper'

class EquiposYCuerposTecnicosControllerTest < ActionController::TestCase
  setup do
    @equipo_y_cuerpo_tecnico = equipos_y_cuerpos_tecnicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipos_y_cuerpos_tecnicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo_y_cuerpo_tecnico" do
    assert_difference('EquipoYCuerpoTecnico.count') do
      post :create, equipo_y_cuerpo_tecnico: { codigo_club_id: @equipo_y_cuerpo_tecnico.codigo_club_id, empleado_del_cuerpo_tecnico_id: @equipo_y_cuerpo_tecnico.empleado_del_cuerpo_tecnico_id, puesto: @equipo_y_cuerpo_tecnico.puesto }
    end

    assert_redirected_to equipo_y_cuerpo_tecnico_path(assigns(:equipo_y_cuerpo_tecnico))
  end

  test "should show equipo_y_cuerpo_tecnico" do
    get :show, id: @equipo_y_cuerpo_tecnico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo_y_cuerpo_tecnico
    assert_response :success
  end

  test "should update equipo_y_cuerpo_tecnico" do
    put :update, id: @equipo_y_cuerpo_tecnico, equipo_y_cuerpo_tecnico: { codigo_club_id: @equipo_y_cuerpo_tecnico.codigo_club_id, empleado_del_cuerpo_tecnico_id: @equipo_y_cuerpo_tecnico.empleado_del_cuerpo_tecnico_id, puesto: @equipo_y_cuerpo_tecnico.puesto }
    assert_redirected_to equipo_y_cuerpo_tecnico_path(assigns(:equipo_y_cuerpo_tecnico))
  end

  test "should destroy equipo_y_cuerpo_tecnico" do
    assert_difference('EquipoYCuerpoTecnico.count', -1) do
      delete :destroy, id: @equipo_y_cuerpo_tecnico
    end

    assert_redirected_to equipos_y_cuerpos_tecnicos_path
  end
end
