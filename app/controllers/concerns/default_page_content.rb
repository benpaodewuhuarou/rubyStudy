module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_title
	end

	def set_title
		@page_title = 'Devecamp Portfolio | My Portfolio Website'
		@seo_keywords = 'Calvin portfolio'
	end

end