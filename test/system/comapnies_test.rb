require "application_system_test_case"

class ComapniesTest < ApplicationSystemTestCase
  setup do
    @comapny = comapnies(:one)
  end

  test "visiting the index" do
    visit comapnies_url
    assert_selector "h1", text: "Comapnies"
  end

  test "should create comapny" do
    visit comapnies_url
    click_on "New comapny"

    fill_in "Name", with: @comapny.name
    click_on "Create Comapny"

    assert_text "Comapny was successfully created"
    click_on "Back"
  end

  test "should update Comapny" do
    visit comapny_url(@comapny)
    click_on "Edit this comapny", match: :first

    fill_in "Name", with: @comapny.name
    click_on "Update Comapny"

    assert_text "Comapny was successfully updated"
    click_on "Back"
  end

  test "should destroy Comapny" do
    visit comapny_url(@comapny)
    click_on "Destroy this comapny", match: :first

    assert_text "Comapny was successfully destroyed"
  end
end
