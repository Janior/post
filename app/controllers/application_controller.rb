class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def private_access
  #	redirect_to new_user_session_path unless <% if user_signed_in?
  end

  def signed_in?
  	!current_user.nil?
  end
  helper_method :signed_in?
  

end
