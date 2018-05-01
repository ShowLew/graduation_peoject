require 'test_helper'

class MaterialInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_info = material_infos(:one)
  end

  test "should get index" do
    get material_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_material_info_url
    assert_response :success
  end

  test "should create material_info" do
    assert_difference('MaterialInfo.count') do
      post material_infos_url, params: { material_info: { latest_time: @material_info.latest_time, local: @material_info.local, material_name: @material_info.material_name, quantity: @material_info.quantity, supplier_name: @material_info.supplier_name, supplier_phone: @material_info.supplier_phone } }
    end

    assert_redirected_to material_info_url(MaterialInfo.last)
  end

  test "should show material_info" do
    get material_info_url(@material_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_info_url(@material_info)
    assert_response :success
  end

  test "should update material_info" do
    patch material_info_url(@material_info), params: { material_info: { latest_time: @material_info.latest_time, local: @material_info.local, material_name: @material_info.material_name, quantity: @material_info.quantity, supplier_name: @material_info.supplier_name, supplier_phone: @material_info.supplier_phone } }
    assert_redirected_to material_info_url(@material_info)
  end

  test "should destroy material_info" do
    assert_difference('MaterialInfo.count', -1) do
      delete material_info_url(@material_info)
    end

    assert_redirected_to material_infos_url
  end
end
