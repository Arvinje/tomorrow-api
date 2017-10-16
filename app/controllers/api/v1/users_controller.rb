class Api::V1::UsersController < Api::V1::ApiController
  skip_before_action :authenticate_with_api_key!, only: [:create]

  def create
    new_user_params = {
      username: params[:username],
      os_version: params[:agent].split(' ').first,
      app_version: params[:agent].split(' ').last
    }
    user = User.new(new_user_params)
    if user.save
      render json: { api_key: user.api_key }, status: :created
    else
      head :unprocessable_entity
    end
  end

  private

  # def user_params
  #   @user_params ||= params.permit(:username, :agent)
  # end
end
