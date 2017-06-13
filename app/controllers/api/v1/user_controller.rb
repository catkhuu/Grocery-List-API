class UserController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find_by(id: params[:id])  ## current_user might be set in application_controller when User logs in with JWT
    render json: @user, status: :ok        ## OR create before_action filter to set current_user for :show and :update
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user && @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :position, :password, :password_confirmation)
  end
end
