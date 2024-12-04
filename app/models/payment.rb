class Payment < ApplicationRecord
  belongs_to :booking

  validates_presence_of :booking_id, :date, :amount, :method
  validates_numericality_of :amount, greater_than_or_equal_to: 0
  validates_inclusion_of :method, in: %w[credit_card bank_transfer e_wallet], message: "%{value} is not a valid payment method"
end
