json.extract! payment, :id, :booking_id, :date, :amount, :method, :created_at, :updated_at
json.url payment_url(payment, format: :json)
