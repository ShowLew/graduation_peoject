class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_admin_user!
  protect_from_forgery with: :null_session

  # def authenticate_admin_user!
  #   authenticate_or_request_with_http_basic do |user_name, password|
  #     user_name == Keys.admin.user_name && password == Keys.admin.password
  #   end
  # end

  def access_denied(exception)
    redirect_to "/admin/warehouses", alert: exception.message
  end

  private
  # Its important that the location is NOT stored if:
  # - The request method is not GET (non idempotent)
  # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
  #    infinite redirect loop.
  # - The request is an Ajax request as this can lead to very unexpected behaviour.
  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    # :user is the scope we are authenticating
    store_location_for(:user, request.fullpath)
  end
end
