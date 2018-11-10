class BookingMailer < ApplicationMailer

  def booking_user(booking)
    @booking = booking

    mail(to: @booking.email, subject: t('.subject'))
  end

  def booking_admin(booking)
    @booking = booking

    mail(to: 'berlin@bici-bike-berlin.com', subject: 'Neue Tour Buchung')
  end

end
