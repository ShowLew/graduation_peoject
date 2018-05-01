require 'test_helper'

class UseMaterialInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use_material_info = use_material_infos(:one)
  end

  test "should get index" do
    get use_material_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_use_material_info_url
    assert_response :success
  end

  test "should create use_material_info" do
    assert_difference('UseMaterialInfo.count') do
      post use_material_infos_url, params: { use_material_info: { material_name: @use_material_info.material_name, quantity: @use_material_info.quantity, use_time: @use_material_info.use_time, worker_name: @use_material_info.worker_name, worker_number: @use_material_info.worker_number } }
    end

    assert_redirected_to use_material_info_url(UseMaterialInfo.last)
  end

  test "should show use_material_info" do
    get use_material_info_url(@use_material_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_use_material_info_url(@use_material_info)
    assert_response :success
  end

  test "should update use_material_info" do
    patch use_material_info_url(@use_material_info), params: { use_material_info: { material_name: @use_material_info.material_name, quantity: @use_material_info.quantity, use_time: @use_material_info.use_time, worker_name: @use_material_info.worker_name, worker_number: @use_material_info.worker_number } }
    assert_redirected_to use_material_info_url(@use_material_info)
  end

  test "should destroy use_material_info" do
    assert_difference('UseMaterialInfo.count', -1) do
      delete use_material_info_url(@use_material_info)
    end

    assert_redirected_to use_material_infos_url
  end
end
