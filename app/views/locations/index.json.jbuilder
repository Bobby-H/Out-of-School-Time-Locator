json.array!(@locations) do |location|
  json.extract! location, :id, :site, :programs, :cost, :hours, :contact, :program, :grade, :zip
  json.url location_url(location, format: :json)
end
