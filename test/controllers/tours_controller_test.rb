require "test_helper"

class ToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get tours_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_url
    assert_response :success
  end

  test "should create tour" do
    assert_difference("Tour.count") do
      post tours_url, params: { tour: { destination: @tour.destination, end_date: @tour.end_date, max_capcity: @tour.max_capcity, minimum_price: @tour.minimum_price, name: @tour.name, start_date: @tour.start_date } }
    end

    assert_redirected_to tour_url(Tour.last)
  end

  test "should show tour" do
    get tour_url(@tour)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_url(@tour)
    assert_response :success
  end

  test "should update tour" do
    patch tour_url(@tour), params: { tour: { destination: @tour.destination, end_date: @tour.end_date, max_capcity: @tour.max_capcity, minimum_price: @tour.minimum_price, name: @tour.name, start_date: @tour.start_date } }
    assert_redirected_to tour_url(@tour)
  end

  test "should destroy tour" do
    assert_difference("Tour.count", -1) do
      delete tour_url(@tour)
    end

    assert_redirected_to tours_url
  end
end
