class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show

    @user = User.find(params[:id])
    render json: @user.format
  end

  # POST /users
  def create
    @user = User.create(user_params)



    if @user.valid?
      token = encode_token({id: @user.id})
      render json: {user: {email: @user.email, id: @user.id, jwt: token}}, status: :created
    else
      render json: {message: "User not created"}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :admin)
    end
end
