class ApplicationController < ActionController::API
  before_action :authorized
  
  def encode_token(payload)
    JWT.encode(payload, Rails.application.credentials.jwt[:secret])
  end

  def auth_headers
    request.headers['Authorization']
  end

  def decoded_token
    if auth_headers
      token = auth_headers
      begin
        JWT.decode(token, Rails.application.credentials.jwt[:secret])
      rescue
        nil
      end
    end
  end

  def current_user
    if decoded_token
      payload = decoded_token[0]
      @user = User.find(payload['id'])
    else
      nil
    end
  end

  def logged_in
    !!current_user
  end

  def authorized
    render json: {message: 'Invalid Credentials'}, status: :unauthorized unless logged_in
  end

end
