class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_back_url, only: [:new]

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to session[:back_link]
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    current_user.update(user_params)

    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :image_url, :name, :bio)
  end
end
