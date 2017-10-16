class Api::V1::ApiController < ActionController::API
  include Authenticable

  before_action :authenticate_with_api_key!

  rescue_from ActiveRecord::RecordNotFound do |e|
    render json: { message: e.message }, status: :not_found
  end

  rescue_from ActiveRecord::RecordInvalid do |e|
    render json: { message: e.message }, status: :unprocessable_entity
  end
end
