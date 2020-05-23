module Placeholder
    extend ActiveSupport::Concern
	def self.image_generator(dims)
		"https://via.placeholder.com/#{dims}"
	end	
end	