require "test_helper"

class VehicleSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_schedule = vehicle_schedules(:one)
  end

  test "should get index" do
    get vehicle_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_schedule_url
    assert_response :success
  end

  test "should create vehicle_schedule" do
    assert_difference("VehicleSchedule.count") do
      post vehicle_schedules_url, params: { vehicle_schedule: { arrival_time: @vehicle_schedule.arrival_time, departure_time: @vehicle_schedule.departure_time, route: @vehicle_schedule.route, tour_id: @vehicle_schedule.tour_id, vehicle_id: @vehicle_schedule.vehicle_id } }
    end

    assert_redirected_to vehicle_schedule_url(VehicleSchedule.last)
  end

  test "should show vehicle_schedule" do
    get vehicle_schedule_url(@vehicle_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_schedule_url(@vehicle_schedule)
    assert_response :success
  end

  test "should update vehicle_schedule" do
    patch vehicle_schedule_url(@vehicle_schedule), params: { vehicle_schedule: { arrival_time: @vehicle_schedule.arrival_time, departure_time: @vehicle_schedule.departure_time, route: @vehicle_schedule.route, tour_id: @vehicle_schedule.tour_id, vehicle_id: @vehicle_schedule.vehicle_id } }
    assert_redirected_to vehicle_schedule_url(@vehicle_schedule)
  end

  test "should destroy vehicle_schedule" do
    assert_difference("VehicleSchedule.count", -1) do
      delete vehicle_schedule_url(@vehicle_schedule)
    end

    assert_redirected_to vehicle_schedules_url
  end
end
