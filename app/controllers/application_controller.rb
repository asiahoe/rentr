class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
      super || Guest.new

  def set_back_url
    session[:back_link] = request.referer
  end

  def current_user
      super || Guest.new
  end
end
