class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @tours = Tour.where(active: true)
  end

  def show
    @tour = Tour.find(params[:id])
    @booking = Booking.new
    local = I18n.locale
  end

end
