require 'test_helper'

class EmpleadosDelCuerpoTecnicoControllerTest < ActionController::TestCase
  setup do
    @empleado_del_cuerpo_tecnico = empleados_del_cuerpo_tecnico(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleados_del_cuerpo_tecnico)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleado_del_cuerpo_tecnico" do
    assert_difference('EmpleadoDelCuerpoTecnico.count') do
      post :create, empleado_del_cuerpo_tecnico: { apellido: @empleado_del_cuerpo_tecnico.apellido, direccion: @empleado_del_cuerpo_tecnico.direccion, dni: @empleado_del_cuerpo_tecnico.dni, email: @empleado_del_cuerpo_tecnico.email, fecha_de_nacimiento: @empleado_del_cuerpo_tecnico.fecha_de_nacimiento, nombre: @empleado_del_cuerpo_tecnico.nombre, telefono_celular: @empleado_del_cuerpo_tecnico.telefono_celular, telefono_fijo: @empleado_del_cuerpo_tecnico.telefono_fijo }
    end

    assert_redirected_to empleado_del_cuerpo_tecnico_path(assigns(:empleado_del_cuerpo_tecnico))
  end

  test "should show empleado_del_cuerpo_tecnico" do
    get :show, id: @empleado_del_cuerpo_tecnico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empleado_del_cuerpo_tecnico
    assert_response :success
  end

  test "should update empleado_del_cuerpo_tecnico" do
    put :update, id: @empleado_del_cuerpo_tecnico, empleado_del_cuerpo_tecnico: { apellido: @empleado_del_cuerpo_tecnico.apellido, direccion: @empleado_del_cuerpo_tecnico.direccion, dni: @empleado_del_cuerpo_tecnico.dni, email: @empleado_del_cuerpo_tecnico.email, fecha_de_nacimiento: @empleado_del_cuerpo_tecnico.fecha_de_nacimiento, nombre: @empleado_del_cuerpo_tecnico.nombre, telefono_celular: @empleado_del_cuerpo_tecnico.telefono_celular, telefono_fijo: @empleado_del_cuerpo_tecnico.telefono_fijo }
    assert_redirected_to empleado_del_cuerpo_tecnico_path(assigns(:empleado_del_cuerpo_tecnico))
  end

  test "should destroy empleado_del_cuerpo_tecnico" do
    assert_difference('EmpleadoDelCuerpoTecnico.count', -1) do
      delete :destroy, id: @empleado_del_cuerpo_tecnico
    end

    assert_redirected_to empleados_del_cuerpo_tecnico_path
  end
end
