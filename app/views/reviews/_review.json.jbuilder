json.extract! review, :id, :review_text, :rating, :review_date, :user_id, :tour_id, :created_at, :updated_at
json.url review_url(review, format: :json)
