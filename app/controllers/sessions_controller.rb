class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :keep_link_back_url, only: [:new]

  def new
  end

  def create
    user = authenticate_session(session_params)

    if sign_in(user)
      redirect_to session[:link_back]
    else
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end

