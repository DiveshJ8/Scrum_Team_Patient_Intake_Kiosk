require "application_system_test_case"

class HealthHistoriesTest < ApplicationSystemTestCase
  setup do
    @health_history = health_histories(:one)
  end

  test "visiting the index" do
    visit health_histories_url
    assert_selector "h1", text: "Health Histories"
  end

  test "creating a Health history" do
    visit health_histories_url
    click_on "New Health History"

    fill_in "Relation", with: @health_history.relation
    click_on "Create Health history"

    assert_text "Health history was successfully created"
    click_on "Back"
  end

  test "updating a Health history" do
    visit health_histories_url
    click_on "Edit", match: :first

    fill_in "Relation", with: @health_history.relation
    click_on "Update Health history"

    assert_text "Health history was successfully updated"
    click_on "Back"
  end

  test "destroying a Health history" do
    visit health_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health history was successfully destroyed"
  end
end
