require "application_system_test_case"

class OutQuantityInfosTest < ApplicationSystemTestCase
  setup do
    @out_quantity_info = out_quantity_infos(:one)
  end

  test "visiting the index" do
    visit out_quantity_infos_url
    assert_selector "h1", text: "Out Quantity Infos"
  end

  test "creating a Out quantity info" do
    visit out_quantity_infos_url
    click_on "New Out Quantity Info"

    fill_in "No", with: @out_quantity_info.no
    fill_in "Out Quantity Time", with: @out_quantity_info.out_quantity_time
    fill_in "Quantity", with: @out_quantity_info.quantity
    click_on "Create Out quantity info"

    assert_text "Out quantity info was successfully created"
    click_on "Back"
  end

  test "updating a Out quantity info" do
    visit out_quantity_infos_url
    click_on "Edit", match: :first

    fill_in "No", with: @out_quantity_info.no
    fill_in "Out Quantity Time", with: @out_quantity_info.out_quantity_time
    fill_in "Quantity", with: @out_quantity_info.quantity
    click_on "Update Out quantity info"

    assert_text "Out quantity info was successfully updated"
    click_on "Back"
  end

  test "destroying a Out quantity info" do
    visit out_quantity_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Out quantity info was successfully destroyed"
  end
end
