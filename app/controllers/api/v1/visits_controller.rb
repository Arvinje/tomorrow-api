class Api::V1::VisitsController < Api::V1::ApiController
  def create
    if Visit.exists?(user: current_user, hotspot_id: params[:hotspot_id])
      head :ok
    else
      Hotspot.find(params[:hotspot_id]).visits.create(user: current_user)
      head :created
    end
  end
end
