class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: [:index, :my_events, :dashboard], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :my_events], unless: :skip_pundit?

  # redirect if you dont have access to the action
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :origin, :residence, :biography])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :origin, :residence, :biography])
  end

  def user_not_authorized
    # redirect if you dont have access to the action
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || dashboard_path)
  end

  # setup host to generate the absolute url needed to load images from the external world (Facebook, Twitter, ...). overrides Rails.application.default_url_options[:host]
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
