class ApplicationController < ActionController::Base
  protect_from_forgery 

  private
                               
  def authenticate_and_set_current_user!
    authenticate_user!
    User.current_user = current_user
  end
end
