class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params)
    @booking.tour = @tour
    if @booking.save
      respond_to do |format|
        format.html { redirect_to tour_path(@tour) }
        format.js
      end
      BookingMailer.booking_user(@booking).deliver_now
      BookingMailer.booking_admin(@booking).deliver_now
    else
      respond_to do |format|
        format.html { render 'tours/show' }
        format.js
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :booking_date, :email, :phone, :comment)
  end

end
