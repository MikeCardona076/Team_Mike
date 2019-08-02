require "application_system_test_case"

class BarracksTest < ApplicationSystemTestCase
  setup do
    @barrack = barracks(:one)
  end

  test "visiting the index" do
    visit barracks_url
    assert_selector "h1", text: "Barracks"
  end

  test "creating a Barrack" do
    visit barracks_url
    click_on "New Barrack"

    fill_in "I d", with: @barrack.i_d
    fill_in "Location", with: @barrack.location
    fill_in "Name barrack", with: @barrack.name_barrack
    click_on "Create Barrack"

    assert_text "Barrack was successfully created"
    click_on "Back"
  end

  test "updating a Barrack" do
    visit barracks_url
    click_on "Edit", match: :first

    fill_in "I d", with: @barrack.i_d
    fill_in "Location", with: @barrack.location
    fill_in "Name barrack", with: @barrack.name_barrack
    click_on "Update Barrack"

    assert_text "Barrack was successfully updated"
    click_on "Back"
  end

  test "destroying a Barrack" do
    visit barracks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barrack was successfully destroyed"
  end
end
