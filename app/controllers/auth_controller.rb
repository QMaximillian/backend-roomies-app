class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def login
    @user = User.find_by(email: auth_params['email'])

    if @user && @user.authenticate(auth_params['password'])
      token = encode_token({id: @user.id})
      render json: {user: {email: @user.email, id: @user.id, jwt: token}}, status: :created
    else
      render json: {message: 'Invalid Username or Password'}, status: :unauthorized
    end
  end

  def reauth
    # token = request.headers['Authorization']
    # decoded_token = JWT.decode(token, Rails.application.credentials.jwt[:secret])
    # user_id = decoded_token[0]['id']
    # @user = User.find(user_id)
    # if @user
    #   render json: @user, status: :accepted
    # else
    #   render json: {message: 'Invalid Credentials. Please login again'}, status: :unauthorized
    # end
    render json: { user: @user }, status: :accepted
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password)
  end
end
