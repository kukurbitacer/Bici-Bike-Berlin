class BookingMailer < ApplicationMailer

  def booking_user(booking)
    @booking = booking

    mail(to: @booking.email, subject: t('.subject'))
  end

  def booking_admin(booking)
    @booking = booking

    mail(to: 'camille.raiser@hotmail.fr', subject: 'Neue Tour Buchung')
  end

end
