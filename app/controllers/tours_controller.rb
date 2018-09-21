class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]


  def show
    @tour = Tour.find(params[:id])
    @booking = Booking.new
    local = I18n.locale
  end

end
