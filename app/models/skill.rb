class Skill < ApplicationRecord
	after_initialize :set_defaults
	include Placeholder

	def set_defaults
		self.badge ||= Placeholder.image_generator(dims: 100)
	end	
end
