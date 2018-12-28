class UserHomesController < ApplicationController
  before_action :set_user_homes, only: [:show, :update, :destroy]


  # GET /user_homes
  def index
    @user_homes = UserHome.all

    render json: @user_homes
  end

  # GET /user_homes/1
  def show
    render json: {user_homes: @user_home.format}
  end

  # POST /user_homes
  def create
    byebug
    @user_home = UserHome.new(user_home_params)

    if @user_home.save
      render json: @user_home, status: :created
    else
      render json: @user_home.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_homes/1
  def update
    if @user_homes.update(user_homes_params)
      render json: @user_homes
    else
      render json: @user_homes.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_homes/1
  def destroy
    @user_homes.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_user_homes
      @user_homes = UserHome.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_home_params
      params.require(:user_home).permit(:user_id, :home_id)
    end
end
