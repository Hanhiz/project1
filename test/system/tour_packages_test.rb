require "application_system_test_case"

class TourPackagesTest < ApplicationSystemTestCase
  setup do
    @tour_package = tour_packages(:one)
  end

  test "visiting the index" do
    visit tour_packages_url
    assert_selector "h1", text: "Tour packages"
  end

  test "should create tour package" do
    visit tour_packages_url
    click_on "New tour package"

    fill_in "Description", with: @tour_package.description
    fill_in "Name", with: @tour_package.name
    fill_in "Price", with: @tour_package.price
    fill_in "Tour", with: @tour_package.tour_id
    click_on "Create Tour package"

    assert_text "Tour package was successfully created"
    click_on "Back"
  end

  test "should update Tour package" do
    visit tour_package_url(@tour_package)
    click_on "Edit this tour package", match: :first

    fill_in "Description", with: @tour_package.description
    fill_in "Name", with: @tour_package.name
    fill_in "Price", with: @tour_package.price
    fill_in "Tour", with: @tour_package.tour_id
    click_on "Update Tour package"

    assert_text "Tour package was successfully updated"
    click_on "Back"
  end

  test "should destroy Tour package" do
    visit tour_package_url(@tour_package)
    click_on "Destroy this tour package", match: :first

    assert_text "Tour package was successfully destroyed"
  end
end
