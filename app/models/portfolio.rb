class Portfolio < ApplicationRecord
	scope :angular, lambda{ where(subtitle: "Angular")}
	after_initialize :set_defaults
	has_many :technologies
	accepts_nested_attributes_for :technologies,
								  reject_if: lambda { |atters| atters["name"].blank? } 
	include  Placeholder

	def set_defaults
		self.thumb_image ||= Placeholder.image_generator(150)
		self.main_image ||= Placeholder.image_generator(150)
	end	
end
