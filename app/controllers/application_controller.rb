class ApplicationController < ActionController::Base
  private
  def legal_flight_search
    !(params[:origin_id].blank? && params[:destination_id].blank? && params[:date].blank? && params[:passengers].blank?)
  end
end
