class ProfileController < ApplicationController
  def show
    render json: current_user
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  def update
    if current_user.update(user_params)
      render json: current_user
    else
      render json: current_user.errors, status: :bad_request
    end
  end

  def destroy
    current_user.destroy
    render status: :no_content
  end

  private

  def user_params
    params.permit(:email, :password, :username)
  end
end
