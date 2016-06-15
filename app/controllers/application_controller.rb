class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def new_opro_token_path
      "#{ENV['opro_base_url']}/oauth/new?client_id=#{ENV['opro_client_id']}&client_secret=#{ENV['opro_client_secret']}&redirect_uri=%2F%2Flocalhost%3A3001%2Foauth%2Fcallback"
    end

  helper_method :new_opro_token_path
end
