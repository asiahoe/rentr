class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
      super || Guest.new

  def keep_link_back_url
    if not_new_session?
      session[:link_back] = request.referer
    end
  end

  def current_user
      super || Guest.new
  end

  def not_new_session?
    request.referer != new_session_url
  end
end
