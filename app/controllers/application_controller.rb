require 'ostruct'
class ApplicationController < ActionController::Base
	include DeviseWhiteList
	def current_user
		super || OpenStruct.new(email: 'guest@test', username:"guest user")
	end	
end
