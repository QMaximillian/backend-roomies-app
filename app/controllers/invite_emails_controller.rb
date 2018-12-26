class InviteEmailsController < ApplicationController
  before_action :set_invite_email, only: [:show, :update, :destroy]

  # GET /invite_emails
  def index
    @invite_emails = InviteEmail.all

    render json: @invite_emails
  end

  # GET /invite_emails/1
  def show
    render json: @invite_email
  end

  # POST /invite_emails
  def create
    byebug
    # @invite_email = InviteEmail.new(invite_email_params)
    # if @invite_email.save
    #   HouseJoinMailer.join_house(@invite_email)
    # else
    #   render json: @invite_email.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /invite_emails/1
  def update
    if @invite_email.update(invite_email_params)
      render json: @invite_email
    else
      render json: @invite_email.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invite_emails/1
  def destroy
    @invite_email.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite_email
      @invite_email = InviteEmail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invite_email_params
      params.require(:invite_email).permit(:house_code, :first_name, :last_name, :email, :sender_id)
    end
end
