require "application_system_test_case"

class BellsTest < ApplicationSystemTestCase
  setup do
    @bell = bells(:one)
  end

  test "visiting the index" do
    visit bells_url
    assert_selector "h1", text: "Bells"
  end

  test "creating a Bell" do
    visit bells_url
    click_on "New Bell"

    click_on "Create Bell"

    assert_text "Bell was successfully created"
    click_on "Back"
  end

  test "updating a Bell" do
    visit bells_url
    click_on "Edit", match: :first

    click_on "Update Bell"

    assert_text "Bell was successfully updated"
    click_on "Back"
  end

  test "destroying a Bell" do
    visit bells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bell was successfully destroyed"
  end
end
