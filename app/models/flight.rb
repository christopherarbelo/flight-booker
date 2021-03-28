class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings

  private
  def self.available_dates
    self.select(:date).distinct.order(:date).map(&:date)
  end
end
