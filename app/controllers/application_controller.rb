class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from TinyBlog::AccessDenied do |_|
    message = 'You are not authorized to view that page.'
    respond_to do |format|
      format.json do
        render json: { error: message, status: :forbidden }
      end
      format.all { redirect_to root_path, alert: message }
    end
  end
end
