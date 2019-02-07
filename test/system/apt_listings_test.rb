require "application_system_test_case"

class AptListingsTest < ApplicationSystemTestCase
  setup do
    @apt_listing = apt_listings(:one)
  end

  test "visiting the index" do
    visit apt_listings_url
    assert_selector "h1", text: "Apt Listings"
  end

  test "creating a Apt listing" do
    visit apt_listings_url
    click_on "New Apt Listing"

    fill_in "Address 1", with: @apt_listing.address_1
    fill_in "Address 2", with: @apt_listing.address_2
    fill_in "City", with: @apt_listing.city
    fill_in "Country", with: @apt_listing.country
    fill_in "Manag contact hrs", with: @apt_listing.manag_contact_hrs
    fill_in "Manag name", with: @apt_listing.manag_name
    fill_in "Manag phone", with: @apt_listing.manag_phone
    fill_in "Postal code", with: @apt_listing.postal_code
    fill_in "State", with: @apt_listing.state
    click_on "Create Apt listing"

    assert_text "Apt listing was successfully created"
    click_on "Back"
  end

  test "updating a Apt listing" do
    visit apt_listings_url
    click_on "Edit", match: :first

    fill_in "Address 1", with: @apt_listing.address_1
    fill_in "Address 2", with: @apt_listing.address_2
    fill_in "City", with: @apt_listing.city
    fill_in "Country", with: @apt_listing.country
    fill_in "Manag contact hrs", with: @apt_listing.manag_contact_hrs
    fill_in "Manag name", with: @apt_listing.manag_name
    fill_in "Manag phone", with: @apt_listing.manag_phone
    fill_in "Postal code", with: @apt_listing.postal_code
    fill_in "State", with: @apt_listing.state
    click_on "Update Apt listing"

    assert_text "Apt listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Apt listing" do
    visit apt_listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apt listing was successfully destroyed"
  end
end
