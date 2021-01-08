class ToneService
	def self.fetch_tone(text)
		conn = Faraday.new(ENV['TONE_URL']) do |connection|
			connection.basic_auth('apikey', ENV['TONE_API_KEY'])
		end
		response = conn.get('/v3/tone?version=2017-09-21') do |req|
			req.params[:text] = text
		end
		JSON.parse(response.body, symbolize_names: true)
	end
end