class Api::V1::BackgroundsController < ApplicationController
  def index
    if params[:location]
      image = BackgroundFacade.get_image(params[:location])
      render json: Api::V1::BackgroundsController::BackgroundSerializer.background_index_serializer(image)
    else
      render status: 404
    end
  end
end
