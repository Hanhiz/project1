require "application_system_test_case"

class ToursTest < ApplicationSystemTestCase
  setup do
    @tour = tours(:one)
  end

  test "visiting the index" do
    visit tours_url
    assert_selector "h1", text: "Tours"
  end

  test "should create tour" do
    visit tours_url
    click_on "New tour"

    fill_in "Destination", with: @tour.destination
    fill_in "End date", with: @tour.end_date
    fill_in "Max capcity", with: @tour.max_capcity
    fill_in "Minimum price", with: @tour.minimum_price
    fill_in "Name", with: @tour.name
    fill_in "Start date", with: @tour.start_date
    click_on "Create Tour"

    assert_text "Tour was successfully created"
    click_on "Back"
  end

  test "should update Tour" do
    visit tour_url(@tour)
    click_on "Edit this tour", match: :first

    fill_in "Destination", with: @tour.destination
    fill_in "End date", with: @tour.end_date
    fill_in "Max capcity", with: @tour.max_capcity
    fill_in "Minimum price", with: @tour.minimum_price
    fill_in "Name", with: @tour.name
    fill_in "Start date", with: @tour.start_date
    click_on "Update Tour"

    assert_text "Tour was successfully updated"
    click_on "Back"
  end

  test "should destroy Tour" do
    visit tour_url(@tour)
    click_on "Destroy this tour", match: :first

    assert_text "Tour was successfully destroyed"
  end
end
