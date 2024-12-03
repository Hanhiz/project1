require "application_system_test_case"

class TourSchedulesTest < ApplicationSystemTestCase
  setup do
    @tour_schedule = tour_schedules(:one)
  end

  test "visiting the index" do
    visit tour_schedules_url
    assert_selector "h1", text: "Tour schedules"
  end

  test "should create tour schedule" do
    visit tour_schedules_url
    click_on "New tour schedule"

    fill_in "Activity description", with: @tour_schedule.activity_description
    fill_in "Day number", with: @tour_schedule.day_number
    fill_in "Itinerary", with: @tour_schedule.itinerary
    fill_in "Tour", with: @tour_schedule.tour_id
    click_on "Create Tour schedule"

    assert_text "Tour schedule was successfully created"
    click_on "Back"
  end

  test "should update Tour schedule" do
    visit tour_schedule_url(@tour_schedule)
    click_on "Edit this tour schedule", match: :first

    fill_in "Activity description", with: @tour_schedule.activity_description
    fill_in "Day number", with: @tour_schedule.day_number
    fill_in "Itinerary", with: @tour_schedule.itinerary
    fill_in "Tour", with: @tour_schedule.tour_id
    click_on "Update Tour schedule"

    assert_text "Tour schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Tour schedule" do
    visit tour_schedule_url(@tour_schedule)
    click_on "Destroy this tour schedule", match: :first

    assert_text "Tour schedule was successfully destroyed"
  end
end
