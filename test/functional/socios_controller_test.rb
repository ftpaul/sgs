require 'test_helper'

class SociosControllerTest < ActionController::TestCase
  setup do
    @socio = socios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio" do
    assert_difference('Socio.count') do
      post :create, socio: { bi: @socio.bi, cod_postal: @socio.cod_postal, email: @socio.email, entidades: @socio.entidades, foto: @socio.foto, localidade: @socio.localidade, morada: @socio.morada, nascimento: @socio.nascimento, newsletter: @socio.newsletter, nome: @socio.nome, num_aluno: @socio.num_aluno, telemovel: @socio.telemovel }
    end

    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should show socio" do
    get :show, id: @socio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio
    assert_response :success
  end

  test "should update socio" do
    put :update, id: @socio, socio: { bi: @socio.bi, cod_postal: @socio.cod_postal, email: @socio.email, entidades: @socio.entidades, foto: @socio.foto, localidade: @socio.localidade, morada: @socio.morada, nascimento: @socio.nascimento, newsletter: @socio.newsletter, nome: @socio.nome, num_aluno: @socio.num_aluno, telemovel: @socio.telemovel }
    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should destroy socio" do
    assert_difference('Socio.count', -1) do
      delete :destroy, id: @socio
    end

    assert_redirected_to socios_path
  end
end
