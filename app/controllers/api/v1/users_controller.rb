class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def signin
    @user = User.find_or_create_by(email: user_params[:email])
    render json: @user
  end

  def signing
    @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json @user.errors
      end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :contact_number, :profile_image)
  end
end
