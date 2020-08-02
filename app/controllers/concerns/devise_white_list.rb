module DeviseWhiteList
	extend ActiveSupport::Concern
	
	included do
		before_action :configure_permitted_parameters, if: :devise_controller?
		skip_before_action :verify_authenticity_token
    end

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end	