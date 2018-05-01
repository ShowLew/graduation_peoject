require 'test_helper'

class OutQuantityInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @out_quantity_info = out_quantity_infos(:one)
  end

  test "should get index" do
    get out_quantity_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_out_quantity_info_url
    assert_response :success
  end

  test "should create out_quantity_info" do
    assert_difference('OutQuantityInfo.count') do
      post out_quantity_infos_url, params: { out_quantity_info: { no: @out_quantity_info.no, out_quantity_time: @out_quantity_info.out_quantity_time, quantity: @out_quantity_info.quantity } }
    end

    assert_redirected_to out_quantity_info_url(OutQuantityInfo.last)
  end

  test "should show out_quantity_info" do
    get out_quantity_info_url(@out_quantity_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_out_quantity_info_url(@out_quantity_info)
    assert_response :success
  end

  test "should update out_quantity_info" do
    patch out_quantity_info_url(@out_quantity_info), params: { out_quantity_info: { no: @out_quantity_info.no, out_quantity_time: @out_quantity_info.out_quantity_time, quantity: @out_quantity_info.quantity } }
    assert_redirected_to out_quantity_info_url(@out_quantity_info)
  end

  test "should destroy out_quantity_info" do
    assert_difference('OutQuantityInfo.count', -1) do
      delete out_quantity_info_url(@out_quantity_info)
    end

    assert_redirected_to out_quantity_infos_url
  end
end
