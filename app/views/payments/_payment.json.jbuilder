json.extract! payment, :id, :date, :amount, :method, :booking_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
