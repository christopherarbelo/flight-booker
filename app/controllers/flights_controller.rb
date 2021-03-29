class FlightsController < ApplicationController
  def flights
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id] }
    @available_dates = Flight.all.available_dates.map.with_index
    @search = legal_flight_search
    if @search
      @available_flights = Flight.includes(:origin, :destination).where(search_params).to_a
      @passenger_count = params[:passengers]
    end
  end

  private
  def search_params
    params.permit(:origin_id, :destination_id, :date)
  end
end
