require 'ostruct'
class ApplicationController < ActionController::Base
	
	include DeviseWhiteList
	include CustomDefault
end
