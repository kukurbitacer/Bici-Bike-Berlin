class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tours = Tour.where(active: true, first_page: true )
  end
end
