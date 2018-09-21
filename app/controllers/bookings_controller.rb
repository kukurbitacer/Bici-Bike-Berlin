class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params)
    @booking.bike_number = 0 if @booking.bike_number.nil?
    @booking.tour = @tour
    if @booking.save
      respond_to do |format|
        format.html { redirect_to root_path }
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
    params.require(:booking).permit(:first_name,
                                    :last_name,
                                    :booking_date,
                                    :email,
                                    :phone,
                                    :booking_date,
                                    :person_attending,
                                    :bike,
                                    :bike_number,
                                    :comment)
  end

end
