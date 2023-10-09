class ApplicationController < ActionController::Base


	def get_current_user
		@current_user = User.find_sole_by(id:session[:user_id])
	end
end
