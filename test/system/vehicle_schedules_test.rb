require "application_system_test_case"

class VehicleSchedulesTest < ApplicationSystemTestCase
  setup do
    @vehicle_schedule = vehicle_schedules(:one)
  end

  test "visiting the index" do
    visit vehicle_schedules_url
    assert_selector "h1", text: "Vehicle schedules"
  end

  test "should create vehicle schedule" do
    visit vehicle_schedules_url
    click_on "New vehicle schedule"

    fill_in "Arrival time", with: @vehicle_schedule.arrival_time
    fill_in "Departure time", with: @vehicle_schedule.departure_time
    fill_in "Route", with: @vehicle_schedule.route
    fill_in "Tour", with: @vehicle_schedule.tour_id
    fill_in "Vehicle", with: @vehicle_schedule.vehicle_id
    click_on "Create Vehicle schedule"

    assert_text "Vehicle schedule was successfully created"
    click_on "Back"
  end

  test "should update Vehicle schedule" do
    visit vehicle_schedule_url(@vehicle_schedule)
    click_on "Edit this vehicle schedule", match: :first

    fill_in "Arrival time", with: @vehicle_schedule.arrival_time
    fill_in "Departure time", with: @vehicle_schedule.departure_time
    fill_in "Route", with: @vehicle_schedule.route
    fill_in "Tour", with: @vehicle_schedule.tour_id
    fill_in "Vehicle", with: @vehicle_schedule.vehicle_id
    click_on "Update Vehicle schedule"

    assert_text "Vehicle schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle schedule" do
    visit vehicle_schedule_url(@vehicle_schedule)
    click_on "Destroy this vehicle schedule", match: :first

    assert_text "Vehicle schedule was successfully destroyed"
  end
end
