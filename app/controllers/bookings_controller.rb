class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @booking = Booking.new

  end

end
