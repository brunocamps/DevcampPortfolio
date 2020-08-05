class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller? #similar to before_action
    #What it means: run configure_permitted_parameters only if you receive some type of devise controller
    #communication. ? is a flag.

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    end
end
