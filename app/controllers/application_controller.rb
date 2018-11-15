class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def private_access
  #	redirect_to new_user_session_path unless <% if user_signed_in?
  end
end
