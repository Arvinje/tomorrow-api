module Authenticable
  def current_user
    @current_user ||= User.find_by(api_key: request.headers['Authorization'])
  end

  def authenticate_with_api_key!
    head :unauthorized unless current_user
  end
end
