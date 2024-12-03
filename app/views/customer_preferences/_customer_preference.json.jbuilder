json.extract! customer_preference, :id, :preferred_destination, :preferred_travel_date, :user_id, :created_at, :updated_at
json.url customer_preference_url(customer_preference, format: :json)
