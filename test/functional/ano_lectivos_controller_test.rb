require 'test_helper'

class AnoLectivosControllerTest < ActionController::TestCase
  setup do
    @ano_lectivo = ano_lectivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ano_lectivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ano_lectivo" do
    assert_difference('AnoLectivo.count') do
      post :create, ano_lectivo: { ano_lectivo: @ano_lectivo.ano_lectivo }
    end

    assert_redirected_to ano_lectivo_path(assigns(:ano_lectivo))
  end

  test "should show ano_lectivo" do
    get :show, id: @ano_lectivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ano_lectivo
    assert_response :success
  end

  test "should update ano_lectivo" do
    put :update, id: @ano_lectivo, ano_lectivo: { ano_lectivo: @ano_lectivo.ano_lectivo }
    assert_redirected_to ano_lectivo_path(assigns(:ano_lectivo))
  end

  test "should destroy ano_lectivo" do
    assert_difference('AnoLectivo.count', -1) do
      delete :destroy, id: @ano_lectivo
    end

    assert_redirected_to ano_lectivos_path
  end
end
