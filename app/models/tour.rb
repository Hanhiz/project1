class Tour < ApplicationRecord
    has_many :reviews
    has_many :tour_packages
    has_many :vehicle_schedules
    has_many :bookings
    has_many :tour_schedules
    
    has_one_attached :image

    scope :by_destination, ->(destination) { where('destination LIKE ?', "%#{destination}%") }
    scope :by_price_range, ->(min_price, max_price) { where(minimum_price: min_price..max_price) }
    scope :by_date_range, ->(start_date, end_date) { where(start_date: start_date..end_date) }
    
    validates_presence_of :name, :destination, :start_date, :end_date, :minimum_price, :max_capcity
    validates_uniqueness_of :name
    validates_numericality_of :minimum_price, greater_than_or_equal_to: 0
    validates_numericality_of :max_capcity, only_integer: true, greater_than: 0
  
    validate :end_date_after_start_date
  
    private
  
    def end_date_after_start_date
      return if end_date.blank? || start_date.blank?
  
      if end_date < start_date
        errors.add(:end_date, "must be after the start date")
      end
    end
  end

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end
  

  
