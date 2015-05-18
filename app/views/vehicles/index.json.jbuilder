json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :brand, :model, :patent
  json.url vehicle_url(vehicle, format: :json)
end
