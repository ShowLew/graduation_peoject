require 'test_helper'

class OutWarehouseInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @out_warehouse_info = out_warehouse_infos(:one)
  end

  test "should get index" do
    get out_warehouse_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_out_warehouse_info_url
    assert_response :success
  end

  test "should create out_warehouse_info" do
    assert_difference('OutWarehouseInfo.count') do
      post out_warehouse_infos_url, params: { out_warehouse_info: { buyer_name: @out_warehouse_info.buyer_name, buyer_phone: @out_warehouse_info.buyer_phone, finish: @out_warehouse_info.finish, out_address: @out_warehouse_info.out_address, out_no: @out_warehouse_info.out_no, out_time: @out_warehouse_info.out_time } }
    end

    assert_redirected_to out_warehouse_info_url(OutWarehouseInfo.last)
  end

  test "should show out_warehouse_info" do
    get out_warehouse_info_url(@out_warehouse_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_out_warehouse_info_url(@out_warehouse_info)
    assert_response :success
  end

  test "should update out_warehouse_info" do
    patch out_warehouse_info_url(@out_warehouse_info), params: { out_warehouse_info: { buyer_name: @out_warehouse_info.buyer_name, buyer_phone: @out_warehouse_info.buyer_phone, finish: @out_warehouse_info.finish, out_address: @out_warehouse_info.out_address, out_no: @out_warehouse_info.out_no, out_time: @out_warehouse_info.out_time } }
    assert_redirected_to out_warehouse_info_url(@out_warehouse_info)
  end

  test "should destroy out_warehouse_info" do
    assert_difference('OutWarehouseInfo.count', -1) do
      delete out_warehouse_info_url(@out_warehouse_info)
    end

    assert_redirected_to out_warehouse_infos_url
  end
end
