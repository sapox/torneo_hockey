require 'test_helper'

class PartidosArbitrosControllerTest < ActionController::TestCase
  setup do
    @partido_arbitro = partidos_arbitros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partidos_arbitros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partido_arbitro" do
    assert_difference('PartidoArbitro.count') do
      post :create, partido_arbitro: { arbitro_id: @partido_arbitro.arbitro_id, dni: @partido_arbitro.dni, partido_id: @partido_arbitro.partido_id }
    end

    assert_redirected_to partido_arbitro_path(assigns(:partido_arbitro))
  end

  test "should show partido_arbitro" do
    get :show, id: @partido_arbitro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partido_arbitro
    assert_response :success
  end

  test "should update partido_arbitro" do
    put :update, id: @partido_arbitro, partido_arbitro: { arbitro_id: @partido_arbitro.arbitro_id, dni: @partido_arbitro.dni, partido_id: @partido_arbitro.partido_id }
    assert_redirected_to partido_arbitro_path(assigns(:partido_arbitro))
  end

  test "should destroy partido_arbitro" do
    assert_difference('PartidoArbitro.count', -1) do
      delete :destroy, id: @partido_arbitro
    end

    assert_redirected_to partidos_arbitros_path
  end
end
