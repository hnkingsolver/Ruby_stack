class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # ... Any method that we add to the ApplicationController will be available in all of our controllers. Not only that, but we can also make it so that the method is available in all of our views by using helper_method.
  before_action :require_login

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  #ex) <h1>Welcome, <%= current_user.name %></h1>
      # @secrets = current_user.secrets 
  #_____________________________________________________________
  private
  def require_login #unless current user is already signed in, redirect back to homepage for user to log in
    unless current_user
      redirect_to '/'
    end
  end
end
