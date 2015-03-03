json.array!(@locations) do |location|
  json.extract! location, :id, :program, :latitude, :longitude, :address, :zip, :site, :contact, :email, :school_Number, :school, :asep, :sep, :cost, :scholarship/Financial, :Assistance, :transportation, :bsep, :website, :hours, :phone
  json.url location_url(location, format: :json)
end
