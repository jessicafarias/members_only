require "application_system_test_case"

class BurnsTest < ApplicationSystemTestCase
  setup do
    @burn = burns(:one)
  end

  test "visiting the index" do
    visit burns_url
    assert_selector "h1", text: "Burns"
  end

  test "creating a Burn" do
    visit burns_url
    click_on "New Burn"

    fill_in "Burn", with: @burn.burn
    click_on "Create Burn"

    assert_text "Burn was successfully created"
    click_on "Back"
  end

  test "updating a Burn" do
    visit burns_url
    click_on "Edit", match: :first

    fill_in "Burn", with: @burn.burn
    click_on "Update Burn"

    assert_text "Burn was successfully updated"
    click_on "Back"
  end

  test "destroying a Burn" do
    visit burns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Burn was successfully destroyed"
  end
end
