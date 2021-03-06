module ApplicationHelper

	# Returns the appropriate title (full or base) on a per-page basis
	def full_title(page_title)
		base_title = "Skimmatic Test App"
		if page_title.empty?
			base_title
		else 
			"#{base_title} | #{page_title}"
		end
	end
end
