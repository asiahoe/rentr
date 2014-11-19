class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
      super || Guest.new

  def keep_link_back_url
    if request.referer != new_listing_url || request.referer != update_listing_url(params[:id]) || request.referer != "listings#destroy"
      session[:link_back] = request.referer
    end
  end
end
