class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
	 	case resource
	  when Admin
	    admins_root_path
	  when User
	    users_root_path
	  end
	end


	def after_sign_up_path_for(resource)
		case resource
	  when User
	    users_root_path
	  end
	end


	before_action :configure_permitted_parameters, if: :devise_controller?
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[
			:name,
			:name_kana,
			:gender,
			:birthday,
			:postcode,
			:prefecture_code,
			:address_city,
			:address_street,
			:telephone_number])
	end
end
