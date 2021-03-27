class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  private
  def self.available_dates
    self.select(:date).distinct.order(:date).map(&:date)
  end
end
