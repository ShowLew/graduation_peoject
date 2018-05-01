require "application_system_test_case"

class OutWarehouseInfosTest < ApplicationSystemTestCase
  setup do
    @out_warehouse_info = out_warehouse_infos(:one)
  end

  test "visiting the index" do
    visit out_warehouse_infos_url
    assert_selector "h1", text: "Out Warehouse Infos"
  end

  test "creating a Out warehouse info" do
    visit out_warehouse_infos_url
    click_on "New Out Warehouse Info"

    fill_in "Buyer Name", with: @out_warehouse_info.buyer_name
    fill_in "Buyer Phone", with: @out_warehouse_info.buyer_phone
    fill_in "Finish", with: @out_warehouse_info.finish
    fill_in "Out Address", with: @out_warehouse_info.out_address
    fill_in "Out No", with: @out_warehouse_info.out_no
    fill_in "Out Time", with: @out_warehouse_info.out_time
    click_on "Create Out warehouse info"

    assert_text "Out warehouse info was successfully created"
    click_on "Back"
  end

  test "updating a Out warehouse info" do
    visit out_warehouse_infos_url
    click_on "Edit", match: :first

    fill_in "Buyer Name", with: @out_warehouse_info.buyer_name
    fill_in "Buyer Phone", with: @out_warehouse_info.buyer_phone
    fill_in "Finish", with: @out_warehouse_info.finish
    fill_in "Out Address", with: @out_warehouse_info.out_address
    fill_in "Out No", with: @out_warehouse_info.out_no
    fill_in "Out Time", with: @out_warehouse_info.out_time
    click_on "Update Out warehouse info"

    assert_text "Out warehouse info was successfully updated"
    click_on "Back"
  end

  test "destroying a Out warehouse info" do
    visit out_warehouse_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Out warehouse info was successfully destroyed"
  end
end
