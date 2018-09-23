class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def home
    @github_client_id = ENV['GH_BASIC_CLIENT_ID']
    render :home
  end

  private

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def require_admin
      redirect_to controller: 'application', action: 'home' unless current_user.admin
    end

    def require_login
      redirect_to controller: 'application', action: 'home' unless logged_in?
    end

end
