require 'test_helper'

class SubservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subservice = subservices(:one)
  end

  test "should get index" do
    get subservices_url
    assert_response :success
  end

  test "should get new" do
    get new_subservice_url
    assert_response :success
  end

  test "should create subservice" do
    assert_difference('Subservice.count') do
      post subservices_url, params: { subservice: { display_subservicio: @subservice.display_subservicio, nombre_subservicio: @subservice.nombre_subservicio, subservicio_id: @subservice.subservicio_id, tipo_id: @subservice.tipo_id } }
    end

    assert_redirected_to subservice_url(Subservice.last)
  end

  test "should show subservice" do
    get subservice_url(@subservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_subservice_url(@subservice)
    assert_response :success
  end

  test "should update subservice" do
    patch subservice_url(@subservice), params: { subservice: { display_subservicio: @subservice.display_subservicio, nombre_subservicio: @subservice.nombre_subservicio, subservicio_id: @subservice.subservicio_id, tipo_id: @subservice.tipo_id } }
    assert_redirected_to subservice_url(@subservice)
  end

  test "should destroy subservice" do
    assert_difference('Subservice.count', -1) do
      delete subservice_url(@subservice)
    end

    assert_redirected_to subservices_url
  end
end
