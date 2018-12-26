class Porfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy

	accepts_nested_attributes_for :technologies, reject_if: lambda{|attrs| attrs['name'].blank?}
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle:'angular')
	end

	scope :ruby_on_rails, ->{where(subtitle:'Ruby on rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height:'300',width:'300')
		self.thumb_image ||="http://placehold.it/300" 

	end
end
