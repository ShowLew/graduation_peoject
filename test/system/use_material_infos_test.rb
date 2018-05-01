require "application_system_test_case"

class UseMaterialInfosTest < ApplicationSystemTestCase
  setup do
    @use_material_info = use_material_infos(:one)
  end

  test "visiting the index" do
    visit use_material_infos_url
    assert_selector "h1", text: "Use Material Infos"
  end

  test "creating a Use material info" do
    visit use_material_infos_url
    click_on "New Use Material Info"

    fill_in "Material Name", with: @use_material_info.material_name
    fill_in "Quantity", with: @use_material_info.quantity
    fill_in "Use Time", with: @use_material_info.use_time
    fill_in "Worker Name", with: @use_material_info.worker_name
    fill_in "Worker Number", with: @use_material_info.worker_number
    click_on "Create Use material info"

    assert_text "Use material info was successfully created"
    click_on "Back"
  end

  test "updating a Use material info" do
    visit use_material_infos_url
    click_on "Edit", match: :first

    fill_in "Material Name", with: @use_material_info.material_name
    fill_in "Quantity", with: @use_material_info.quantity
    fill_in "Use Time", with: @use_material_info.use_time
    fill_in "Worker Name", with: @use_material_info.worker_name
    fill_in "Worker Number", with: @use_material_info.worker_number
    click_on "Update Use material info"

    assert_text "Use material info was successfully updated"
    click_on "Back"
  end

  test "destroying a Use material info" do
    visit use_material_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Use material info was successfully destroyed"
  end
end
