class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  	
  	def after_sign_in_path_for(resource_or_scope)
 		edit_user_path(current_user.username)
	end
end
