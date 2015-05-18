json.array!(@washes) do |wash|
  json.extract! wash, :id, :amount, :date, :vehicle_id, :employee_id, :customer_id
  json.url wash_url(wash, format: :json)
end
