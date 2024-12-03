require "test_helper"

class CustomerPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_preference = customer_preferences(:one)
  end

  test "should get index" do
    get customer_preferences_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_preference_url
    assert_response :success
  end

  test "should create customer_preference" do
    assert_difference("CustomerPreference.count") do
      post customer_preferences_url, params: { customer_preference: { preferred_destination: @customer_preference.preferred_destination, preferred_travel_date: @customer_preference.preferred_travel_date, user_id: @customer_preference.user_id } }
    end

    assert_redirected_to customer_preference_url(CustomerPreference.last)
  end

  test "should show customer_preference" do
    get customer_preference_url(@customer_preference)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_preference_url(@customer_preference)
    assert_response :success
  end

  test "should update customer_preference" do
    patch customer_preference_url(@customer_preference), params: { customer_preference: { preferred_destination: @customer_preference.preferred_destination, preferred_travel_date: @customer_preference.preferred_travel_date, user_id: @customer_preference.user_id } }
    assert_redirected_to customer_preference_url(@customer_preference)
  end

  test "should destroy customer_preference" do
    assert_difference("CustomerPreference.count", -1) do
      delete customer_preference_url(@customer_preference)
    end

    assert_redirected_to customer_preferences_url
  end
end
