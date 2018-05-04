class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def authenticate_admin_user!
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == Keys.admin.user_name && password == Keys.admin.password
    end
  end
end
