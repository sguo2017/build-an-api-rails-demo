class Api::V1::BaseController < ApplicationController

  respond_to :json

  include Pundit

  attr_accessor :current_user
  
  # 禁用 the CSRF token
  protect_from_forgery with: :null_session

  # 禁用 cookies (no set-cookies header in response)
  before_action :destroy_session

  rescue_from Pundit::NotAuthorizedError, with: :deny_access

  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(opts = {})
    render nothing: true, status: opts[:status]
  end

  def authenticate_user!
    token, options = ActionController::HttpAuthentication::Token.token_and_options(request)

    user_email = options.blank?? nil : options[:email]
    user = user_email && User.find_by(email: user_email)

    if user && ActiveSupport::SecurityUtils.secure_compare(user.authentication_token, token)
      self.current_user = user
    else
      return unauthenticated!
    end
  end

  def unauthenticated!
    api_error(status: 401)
  end

  def deny_access
    api_error(status: 403)
  end

  def paginate(resource)
    resource = resource.page(params[:page] || 1)
    if params[:per_page]
      resource = resource.per(params[:per_page])
    end

    return resource
  end


end

