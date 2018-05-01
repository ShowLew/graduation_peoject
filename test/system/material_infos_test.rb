require "application_system_test_case"

class MaterialInfosTest < ApplicationSystemTestCase
  setup do
    @material_info = material_infos(:one)
  end

  test "visiting the index" do
    visit material_infos_url
    assert_selector "h1", text: "Material Infos"
  end

  test "creating a Material info" do
    visit material_infos_url
    click_on "New Material Info"

    fill_in "Latest Time", with: @material_info.latest_time
    fill_in "Local", with: @material_info.local
    fill_in "Material Name", with: @material_info.material_name
    fill_in "Quantity", with: @material_info.quantity
    fill_in "Supplier Name", with: @material_info.supplier_name
    fill_in "Supplier Phone", with: @material_info.supplier_phone
    click_on "Create Material info"

    assert_text "Material info was successfully created"
    click_on "Back"
  end

  test "updating a Material info" do
    visit material_infos_url
    click_on "Edit", match: :first

    fill_in "Latest Time", with: @material_info.latest_time
    fill_in "Local", with: @material_info.local
    fill_in "Material Name", with: @material_info.material_name
    fill_in "Quantity", with: @material_info.quantity
    fill_in "Supplier Name", with: @material_info.supplier_name
    fill_in "Supplier Phone", with: @material_info.supplier_phone
    click_on "Update Material info"

    assert_text "Material info was successfully updated"
    click_on "Back"
  end

  test "destroying a Material info" do
    visit material_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material info was successfully destroyed"
  end
end
