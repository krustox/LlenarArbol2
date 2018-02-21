require 'test_helper'

class SubcomponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcomponent = subcomponents(:one)
  end

  test "should get index" do
    get subcomponents_url
    assert_response :success
  end

  test "should get new" do
    get new_subcomponent_url
    assert_response :success
  end

  test "should create subcomponent" do
    assert_difference('Subcomponent.count') do
      post subcomponents_url, params: { subcomponent: { componente_id: @subcomponent.componente_id, display_subcomponente: @subcomponent.display_subcomponente, nombre_subcomponente: @subcomponent.nombre_subcomponente, subcomponente_id: @subcomponent.subcomponente_id } }
    end

    assert_redirected_to subcomponent_url(Subcomponent.last)
  end

  test "should show subcomponent" do
    get subcomponent_url(@subcomponent)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcomponent_url(@subcomponent)
    assert_response :success
  end

  test "should update subcomponent" do
    patch subcomponent_url(@subcomponent), params: { subcomponent: { componente_id: @subcomponent.componente_id, display_subcomponente: @subcomponent.display_subcomponente, nombre_subcomponente: @subcomponent.nombre_subcomponente, subcomponente_id: @subcomponent.subcomponente_id } }
    assert_redirected_to subcomponent_url(@subcomponent)
  end

  test "should destroy subcomponent" do
    assert_difference('Subcomponent.count', -1) do
      delete subcomponent_url(@subcomponent)
    end

    assert_redirected_to subcomponents_url
  end
end
