class ToneFacade
	def self.find_tone(text)
		tones = ToneService.fetch_tone(text)
		tones[:document_tone][:tones].map do |tone|
			tone[:tone_name]
		end
	end
end