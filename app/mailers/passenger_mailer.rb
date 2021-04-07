class PassengerMailer < ApplicationMailer
  default from: 'testing@test.net'

  def thank_you_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Booking Confirmed!')
  end
end
