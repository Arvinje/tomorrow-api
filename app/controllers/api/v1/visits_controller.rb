class Api::V1::VisitsController < Api::V1::ApiController
  def create
    Hotspot.find(params[:hotspot_id]).visits.create(user: current_user)
    head :created
  end
end
