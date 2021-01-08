class PoemFacade
	def search_poems(author)
		results = PoemService.fetch_poems(author)
		results.map do |poem|
			Poem.new(poem)
		end
	end
end