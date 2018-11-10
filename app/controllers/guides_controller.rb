class GuidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @guide = Guide.find(params[:id])
    local = I18n.locale
  end
end
