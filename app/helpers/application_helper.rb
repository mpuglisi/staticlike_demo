module ApplicationHelper

	#Restituisce il titolo appropriato della pagina
	def usr_fulltitle (page_title)
		base_title = "Ruby on Rails Static Appl"
		if page_title.empty?
			base_title
		else "#{base_title} | #{page_title}"
		end
	end
end
