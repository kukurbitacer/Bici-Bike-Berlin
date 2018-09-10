# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def booking_user
    booking = Booking.first
    BookingMailer.booking_user(booking)
  end

  def booking_admin
    booking = Booking.first
    BookingMailer.booking_admin(booking)
  end
end
