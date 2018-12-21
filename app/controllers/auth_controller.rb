class AuthController < ApplicationController

  def login
    @user = User.find_by(email: auth_params['email'])

    if @user && @user.authenticate(auth_params['password'])
      render json: {user: {email: @user.email, id: @user.id}}
    else
      render json: {message: 'Invalid Username or Password'}, status: :unauthorized
    end
  end

  def reauth
    token = request.headers['Authorization']
    @user = User.find(token)
    if @user
      render json: @user, status: :accepted
    else
      render json: {message: 'Invalid Credentials. Please login again'}, status: :unauthorized
    end
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password)
  end
end
