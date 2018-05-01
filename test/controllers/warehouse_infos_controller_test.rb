require 'test_helper'

class WarehouseInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse_info = warehouse_infos(:one)
  end

  test "should get index" do
    get warehouse_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_warehouse_info_url
    assert_response :success
  end

  test "should create warehouse_info" do
    assert_difference('WarehouseInfo.count') do
      post warehouse_infos_url, params: { warehouse_info: { fragile: @warehouse_info.fragile, in_time: @warehouse_info.in_time, local: @warehouse_info.local, no: @warehouse_info.no, quantity: @warehouse_info.quantity, size: @warehouse_info.size } }
    end

    assert_redirected_to warehouse_info_url(WarehouseInfo.last)
  end

  test "should show warehouse_info" do
    get warehouse_info_url(@warehouse_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_info_url(@warehouse_info)
    assert_response :success
  end

  test "should update warehouse_info" do
    patch warehouse_info_url(@warehouse_info), params: { warehouse_info: { fragile: @warehouse_info.fragile, in_time: @warehouse_info.in_time, local: @warehouse_info.local, no: @warehouse_info.no, quantity: @warehouse_info.quantity, size: @warehouse_info.size } }
    assert_redirected_to warehouse_info_url(@warehouse_info)
  end

  test "should destroy warehouse_info" do
    assert_difference('WarehouseInfo.count', -1) do
      delete warehouse_info_url(@warehouse_info)
    end

    assert_redirected_to warehouse_infos_url
  end
end
