class PoemService
	def self.fetch_poems(author)
		conn = Faraday.new('https://poetrydb.org')
		response = conn.get("/author/#{author}")
		JSON.parse(response.body, symbolize_names: true)
	end
end