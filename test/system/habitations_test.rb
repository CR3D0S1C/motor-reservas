require "application_system_test_case"

class HabitationsTest < ApplicationSystemTestCase
  setup do
    @habitation = habitations(:one)
  end

  test "visiting the index" do
    visit habitations_url
    assert_selector "h1", text: "Habitations"
  end

  test "should create habitation" do
    visit habitations_url
    click_on "New habitation"

    check "Airc" if @habitation.airc
    check "Private bat" if @habitation.private_bat
    fill_in "Type", with: @habitation.type
    click_on "Create Habitation"

    assert_text "Habitation was successfully created"
    click_on "Back"
  end

  test "should update Habitation" do
    visit habitation_url(@habitation)
    click_on "Edit this habitation", match: :first

    check "Airc" if @habitation.airc
    check "Private bat" if @habitation.private_bat
    fill_in "Type", with: @habitation.type
    click_on "Update Habitation"

    assert_text "Habitation was successfully updated"
    click_on "Back"
  end

  test "should destroy Habitation" do
    visit habitation_url(@habitation)
    click_on "Destroy this habitation", match: :first

    assert_text "Habitation was successfully destroyed"
  end
end
