class Api::V1::HotspotsController < Api::V1::ApiController
  def index
    render json: Hotspot.all, each_serializer: ::V1::HotspotSerializer, status: :ok
  end

  def show
    render json: Hotspot.find(params[:id]), serializer: ::V1::HotspotSerializer, status: :ok
  end
end
