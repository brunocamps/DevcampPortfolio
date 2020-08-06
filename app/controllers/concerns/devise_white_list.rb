module DeviseWhiteList
    extend ActiveSupport::Concern #extend to use methods of Concern

    included do
        before_action :configure_permitted_parameters, if: :devise_controller? #similar to before_action
        #What it means: run configure_permitted_parameters only if you receive some type of devise controller
        #communication. ? is a flag.
    end
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

end