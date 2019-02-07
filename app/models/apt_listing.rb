class AptListing < ApplicationRecord
  #Dependency: Apartment listing can belong to one user
  belongs_to :user
end
