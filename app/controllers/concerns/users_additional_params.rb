module UsersAdditionalParams
    extend ActiveSupport::Concern
    included do
        before_action :additional_params, if: :devise_controller?
    end

    def additional_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name])
    end
end