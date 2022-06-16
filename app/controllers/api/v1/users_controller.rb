class Api::V1::UsersController < ApplicationController

  def create

    user = User.new(user_params)
    if user.valididate_password
      binding.pry
      user.api_key = SecureRandom.urlsafe_base64
      user.save
    end
  end
  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
