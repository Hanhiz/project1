require "test_helper"

class TourPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_package = tour_packages(:one)
  end

  test "should get index" do
    get tour_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_package_url
    assert_response :success
  end

  test "should create tour_package" do
    assert_difference("TourPackage.count") do
      post tour_packages_url, params: { tour_package: { description: @tour_package.description, name: @tour_package.name, price: @tour_package.price, tour_id: @tour_package.tour_id } }
    end

    assert_redirected_to tour_package_url(TourPackage.last)
  end

  test "should show tour_package" do
    get tour_package_url(@tour_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_package_url(@tour_package)
    assert_response :success
  end

  test "should update tour_package" do
    patch tour_package_url(@tour_package), params: { tour_package: { description: @tour_package.description, name: @tour_package.name, price: @tour_package.price, tour_id: @tour_package.tour_id } }
    assert_redirected_to tour_package_url(@tour_package)
  end

  test "should destroy tour_package" do
    assert_difference("TourPackage.count", -1) do
      delete tour_package_url(@tour_package)
    end

    assert_redirected_to tour_packages_url
  end
end
