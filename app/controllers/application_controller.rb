class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from TinyBlog::AccessDenied do |exception|
    exception.default_message = 'You are not authorized to view that page.'
    respond_to do |format|
      format.json do
        render json: { error: exception.message, status: :forbidden }
      end
      format.all { redirect_to root_url, alert: exception.message }
    end
  end
end
