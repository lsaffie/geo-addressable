class Address < ActiveRecord::Base
  #attr_accessor :address, :latitude, :longitude

  geocoded_by :address
  after_validation :geocode          # auto-fetch coordinates
end
#
#Some methods
#Address.near('Toronto, CA', 20, units: :km)
#Address.geocoded
#
#display nearby locations in show view
