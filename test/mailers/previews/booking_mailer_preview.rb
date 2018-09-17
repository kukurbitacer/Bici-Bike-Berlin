# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def booking_user
    booking = Booking.last
    BookingMailer.booking_user(booking)
  end

  def booking_admin
    booking = Booking.last
    BookingMailer.booking_admin(booking)
  end
end
