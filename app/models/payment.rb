class Payment < ApplicationRecord
  belongs_to :booking

  enum method: { credit_card: 0, bank_transfer: 1, e_wallet: 2 }
  validates :booking_id, presence: true 
  validates :date, presence: true 
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 } 
  validates :method, presence: true
end
