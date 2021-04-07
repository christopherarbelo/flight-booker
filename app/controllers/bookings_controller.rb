class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    if legal_flight_search
      @booking = Booking.new
      @flight = Flight.find(params[:flight_id])
      @passenger_count = params[:passengers].to_i
      @passenger_count.times { @booking.passengers.build }
    else
      flash[:error] = "Something went wrong. Please try again."
      redirect_to root_path
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = 'Booking confirmed!'
      redirect_to booking_path(@booking.id)
    else
      flash.now[:error] = 'Something went wrong!'
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
