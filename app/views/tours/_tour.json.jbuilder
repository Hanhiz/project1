json.extract! tour, :id, :name, :destination, :start_date, :end_date, :minimum_price, :max_capcity, :created_at, :updated_at
json.url tour_url(tour, format: :json)
