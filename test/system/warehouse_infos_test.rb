require "application_system_test_case"

class WarehouseInfosTest < ApplicationSystemTestCase
  setup do
    @warehouse_info = warehouse_infos(:one)
  end

  test "visiting the index" do
    visit warehouse_infos_url
    assert_selector "h1", text: "Warehouse Infos"
  end

  test "creating a Warehouse info" do
    visit warehouse_infos_url
    click_on "New Warehouse Info"

    fill_in "Fragile", with: @warehouse_info.fragile
    fill_in "In Time", with: @warehouse_info.in_time
    fill_in "Local", with: @warehouse_info.local
    fill_in "No", with: @warehouse_info.no
    fill_in "Quantity", with: @warehouse_info.quantity
    fill_in "Size", with: @warehouse_info.size
    click_on "Create Warehouse info"

    assert_text "Warehouse info was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse info" do
    visit warehouse_infos_url
    click_on "Edit", match: :first

    fill_in "Fragile", with: @warehouse_info.fragile
    fill_in "In Time", with: @warehouse_info.in_time
    fill_in "Local", with: @warehouse_info.local
    fill_in "No", with: @warehouse_info.no
    fill_in "Quantity", with: @warehouse_info.quantity
    fill_in "Size", with: @warehouse_info.size
    click_on "Update Warehouse info"

    assert_text "Warehouse info was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse info" do
    visit warehouse_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse info was successfully destroyed"
  end
end
