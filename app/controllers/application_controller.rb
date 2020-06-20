class ApplicationController < ActionController::Base
	include DeviseWhiteList
	def current_user
		super || "User"
	end	
end
