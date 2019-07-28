require "application_system_test_case"

class SoldiersTest < ApplicationSystemTestCase
  setup do
    @soldier = soldiers(:one)
  end

  test "visiting the index" do
    visit soldiers_url
    assert_selector "h1", text: "Soldiers"
  end

  test "creating a Soldier" do
    visit soldiers_url
    click_on "New Soldier"

    fill_in "Grade", with: @soldier.grade
    fill_in "Name", with: @soldier.name
    fill_in "Soldier", with: @soldier.soldier_id
    click_on "Create Soldier"

    assert_text "Soldier was successfully created"
    click_on "Back"
  end

  test "updating a Soldier" do
    visit soldiers_url
    click_on "Edit", match: :first

    fill_in "Grade", with: @soldier.grade
    fill_in "Name", with: @soldier.name
    fill_in "Soldier", with: @soldier.soldier_id
    click_on "Update Soldier"

    assert_text "Soldier was successfully updated"
    click_on "Back"
  end

  test "destroying a Soldier" do
    visit soldiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soldier was successfully destroyed"
  end
end
