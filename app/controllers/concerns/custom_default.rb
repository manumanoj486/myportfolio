require "ostruct"
module CustomDefault

	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
    end

	def current_user
		super || OpenStruct.new(email: 'guest@test', username:"guest user")
	end	

	def set_page_defaults
		@page_title = "My portfolio"
	end	

end