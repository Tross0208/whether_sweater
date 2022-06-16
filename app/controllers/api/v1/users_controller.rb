class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.valididate_password
      user.api_key = SecureRandom.urlsafe_base64
      user.save
      render json: Api::V1::UsersController::UserSerializer.user_create_serializer(user)
    end
  end
  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
