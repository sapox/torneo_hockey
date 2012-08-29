require 'test_helper'

class JugadoresControllerTest < ActionController::TestCase
  setup do
    @jugador = jugadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, jugador: { apellido: @jugador.apellido, ciudad: @jugador.ciudad, codigo_club_id: @jugador.codigo_club_id, direccion: @jugador.direccion, dni: @jugador.dni, equipo_id: @jugador.equipo_id, fecha_nacimiento: @jugador.fecha_nacimiento, nombre: @jugador.nombre, provincia: @jugador.provincia, puesto: @jugador.puesto, sexo: @jugador.sexo, telefono_celular: @jugador.telefono_celular, telefono_fijo: @jugador.telefono_fijo }
    end

    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should show jugador" do
    get :show, id: @jugador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jugador
    assert_response :success
  end

  test "should update jugador" do
    put :update, id: @jugador, jugador: { apellido: @jugador.apellido, ciudad: @jugador.ciudad, codigo_club_id: @jugador.codigo_club_id, direccion: @jugador.direccion, dni: @jugador.dni, equipo_id: @jugador.equipo_id, fecha_nacimiento: @jugador.fecha_nacimiento, nombre: @jugador.nombre, provincia: @jugador.provincia, puesto: @jugador.puesto, sexo: @jugador.sexo, telefono_celular: @jugador.telefono_celular, telefono_fijo: @jugador.telefono_fijo }
    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, id: @jugador
    end

    assert_redirected_to jugadores_path
  end
end
