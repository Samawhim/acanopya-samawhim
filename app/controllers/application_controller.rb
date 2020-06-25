class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  
  def default_url_options
    { host: ENV["https://acanopya.herokuapp.com/"] || "localhost:3000" }
  end

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit? 
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def user_not_authorized
      flash[:alert] = "Vous n'êtes pas autorisé(e) pour cette action."
      redirect_to(root_path)
    end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
