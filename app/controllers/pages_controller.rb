class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tours = Tour.where(active: true)
  end
end
