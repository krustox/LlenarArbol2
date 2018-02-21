require 'test_helper'

class AggrupationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aggrupation = aggrupations(:one)
  end

  test "should get index" do
    get aggrupations_url
    assert_response :success
  end

  test "should get new" do
    get new_aggrupation_url
    assert_response :success
  end

  test "should create aggrupation" do
    assert_difference('Aggrupation.count') do
      post aggrupations_url, params: { aggrupation: { agrupacion_id: @aggrupation.agrupacion_id, display_agrupacion: @aggrupation.display_agrupacion, nombre_agrupacion: @aggrupation.nombre_agrupacion, tipo_id: @aggrupation.tipo_id } }
    end

    assert_redirected_to aggrupation_url(Aggrupation.last)
  end

  test "should show aggrupation" do
    get aggrupation_url(@aggrupation)
    assert_response :success
  end

  test "should get edit" do
    get edit_aggrupation_url(@aggrupation)
    assert_response :success
  end

  test "should update aggrupation" do
    patch aggrupation_url(@aggrupation), params: { aggrupation: { agrupacion_id: @aggrupation.agrupacion_id, display_agrupacion: @aggrupation.display_agrupacion, nombre_agrupacion: @aggrupation.nombre_agrupacion, tipo_id: @aggrupation.tipo_id } }
    assert_redirected_to aggrupation_url(@aggrupation)
  end

  test "should destroy aggrupation" do
    assert_difference('Aggrupation.count', -1) do
      delete aggrupation_url(@aggrupation)
    end

    assert_redirected_to aggrupations_url
  end
end
