class Poem
	attr_reader :title, :author, :poem_text

	def initialize(data)
		@title = data[:title]
		@author = data[:author]
		@poem_text = data[:lines].join
	end

	def tones
		@tones ||= ToneFacade.find_tone(poem_text)
	end
end