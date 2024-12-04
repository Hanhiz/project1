class Review < ApplicationRecord
  belongs_to :user
  belongs_to :tour

  validates_presence_of :user_id, :tour_id, :review_text, :rating, :review_date
  validates_length_of :review_text, maximum: 1000
  validates_numericality_of :rating, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
