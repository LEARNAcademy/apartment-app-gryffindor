class CreateAptListings < ActiveRecord::Migration[5.2]
  def change
    create_table :apt_listings do |t|
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country
      t.string :manag_name
      t.integer :manag_phone
      t.string :manag_contact_hrs

      t.timestamps
    end
  end
end
