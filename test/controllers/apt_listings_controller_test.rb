require 'test_helper'

class AptListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apt_listing = apt_listings(:one)
  end

  test "should get index" do
    get apt_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_apt_listing_url
    assert_response :success
  end

  test "should create apt_listing" do
    assert_difference('AptListing.count') do
      post apt_listings_url, params: { apt_listing: { address_1: @apt_listing.address_1, address_2: @apt_listing.address_2, city: @apt_listing.city, country: @apt_listing.country, manag_contact_hrs: @apt_listing.manag_contact_hrs, manag_name: @apt_listing.manag_name, manag_phone: @apt_listing.manag_phone, postal_code: @apt_listing.postal_code, state: @apt_listing.state } }
    end

    assert_redirected_to apt_listing_url(AptListing.last)
  end

  test "should show apt_listing" do
    get apt_listing_url(@apt_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_apt_listing_url(@apt_listing)
    assert_response :success
  end

  test "should update apt_listing" do
    patch apt_listing_url(@apt_listing), params: { apt_listing: { address_1: @apt_listing.address_1, address_2: @apt_listing.address_2, city: @apt_listing.city, country: @apt_listing.country, manag_contact_hrs: @apt_listing.manag_contact_hrs, manag_name: @apt_listing.manag_name, manag_phone: @apt_listing.manag_phone, postal_code: @apt_listing.postal_code, state: @apt_listing.state } }
    assert_redirected_to apt_listing_url(@apt_listing)
  end

  test "should destroy apt_listing" do
    assert_difference('AptListing.count', -1) do
      delete apt_listing_url(@apt_listing)
    end

    assert_redirected_to apt_listings_url
  end
end
