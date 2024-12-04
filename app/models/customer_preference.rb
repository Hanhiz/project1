class CustomerPreference < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :preferred_destination, :preferred_travel_date
  validates_length_of :preferred_destination, maximum: 255
  validate :preferred_travel_date_cannot_be_in_the_past 
  private 
  def preferred_travel_date_cannot_be_in_the_past 
    if preferred_travel_date.present? && preferred_travel_date < Date.today 
      errors.add(:preferred_travel_date, "can't be in the past") 
    end 
  end
end
