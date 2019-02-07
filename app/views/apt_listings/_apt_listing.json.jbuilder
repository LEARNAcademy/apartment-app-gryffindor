json.extract! apt_listing, :id, :address_1, :address_2, :city, :state, :postal_code, :country, :manag_name, :manag_phone, :manag_contact_hrs, :created_at, :updated_at
json.url apt_listing_url(apt_listing, format: :json)
