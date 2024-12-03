require "application_system_test_case"

class CustomerPreferencesTest < ApplicationSystemTestCase
  setup do
    @customer_preference = customer_preferences(:one)
  end

  test "visiting the index" do
    visit customer_preferences_url
    assert_selector "h1", text: "Customer preferences"
  end

  test "should create customer preference" do
    visit customer_preferences_url
    click_on "New customer preference"

    fill_in "Preferred destination", with: @customer_preference.preferred_destination
    fill_in "Preferred travel date", with: @customer_preference.preferred_travel_date
    fill_in "User", with: @customer_preference.user_id
    click_on "Create Customer preference"

    assert_text "Customer preference was successfully created"
    click_on "Back"
  end

  test "should update Customer preference" do
    visit customer_preference_url(@customer_preference)
    click_on "Edit this customer preference", match: :first

    fill_in "Preferred destination", with: @customer_preference.preferred_destination
    fill_in "Preferred travel date", with: @customer_preference.preferred_travel_date
    fill_in "User", with: @customer_preference.user_id
    click_on "Update Customer preference"

    assert_text "Customer preference was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer preference" do
    visit customer_preference_url(@customer_preference)
    click_on "Destroy this customer preference", match: :first

    assert_text "Customer preference was successfully destroyed"
  end
end
