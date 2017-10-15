class Api::V1::ApiController < ActionController::API
  include Authenticable

  before_action :authenticate_with_api_key!
end