json.extract! tour_package, :id, :name, :description, :price, :tour_id, :created_at, :updated_at
json.url tour_package_url(tour_package, format: :json)
