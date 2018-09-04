class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @tours = Tour.where(active: true)
  end
end
