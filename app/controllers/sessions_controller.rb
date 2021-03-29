class SessionsController < ApplicationController
  skip_before_action :require_login, only: :create

  # /login
  def create
    user = User.valid_login?(params[:email], params[:password])

    if user
      user.regenerate_token
      render json: { token: user.token }
    else
      render json: { error: 'Incorrect email or password' }
    end
  end

  # /logout
  def destroy
    current_user.invalidate_token
  end
end
