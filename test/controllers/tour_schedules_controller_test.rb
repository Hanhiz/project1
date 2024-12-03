require "test_helper"

class TourSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_schedule = tour_schedules(:one)
  end

  test "should get index" do
    get tour_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_schedule_url
    assert_response :success
  end

  test "should create tour_schedule" do
    assert_difference("TourSchedule.count") do
      post tour_schedules_url, params: { tour_schedule: { activity_description: @tour_schedule.activity_description, day_number: @tour_schedule.day_number, itinerary: @tour_schedule.itinerary, tour_id: @tour_schedule.tour_id } }
    end

    assert_redirected_to tour_schedule_url(TourSchedule.last)
  end

  test "should show tour_schedule" do
    get tour_schedule_url(@tour_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_schedule_url(@tour_schedule)
    assert_response :success
  end

  test "should update tour_schedule" do
    patch tour_schedule_url(@tour_schedule), params: { tour_schedule: { activity_description: @tour_schedule.activity_description, day_number: @tour_schedule.day_number, itinerary: @tour_schedule.itinerary, tour_id: @tour_schedule.tour_id } }
    assert_redirected_to tour_schedule_url(@tour_schedule)
  end

  test "should destroy tour_schedule" do
    assert_difference("TourSchedule.count", -1) do
      delete tour_schedule_url(@tour_schedule)
    end

    assert_redirected_to tour_schedules_url
  end
end
