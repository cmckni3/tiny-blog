module Users
  class RegistrationsController < Devise::RegistrationsController
    prepend_before_action :configure_sign_up_params, only: [:create]
    prepend_before_action :configure_account_update_params, only: [:update]

    # GET /resource/sign_up
    def new
      super do |resource|
        resource.build_blog
      end
    end

    # POST /resource
    # def create
    #   super
    # end

    # GET /resource/edit
    # def edit
    #   super
    # end

    # PUT /resource
    # def update
    #   super
    # end

    # DELETE /resource
    # def destroy
    #   super
    # end

    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    # def cancel
    #   super
    # end

    protected

    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(
          :email,
          :password,
          :password_confirmation,
          :first_name,
          :last_name,
          :time_zone,
          blog_attributes: [:title, :slug]
        )
      end
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(
          :email,
          :password,
          :password_confirmation,
          :current_password,
          :first_name,
          :last_name,
          :time_zone,
          blog_attributes: [:id, :title, :slug]
        )
      end
      # devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    end

    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end

    # The path used after sign up for inactive accounts.
    # def after_inactive_sign_up_path_for(resource)
    #   super(resource)
    # end
  end
end
