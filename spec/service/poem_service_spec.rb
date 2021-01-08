require 'rails_helper'

describe PoemService do
	it 'fetch_poems()' do
		poems = PoemService.fetch_poems('Emily')

		expect(poems).to be_an(Array)

		poem = poems.first

		expect(poem).to be_a(Hash)
		expect(poem).to have_key(:title)
		expect(poem[:title]).to be_a(String)
		expect(poem).to have_key(:author)
		expect(poem[:author]).to be_a(String)
		expect(poem).to have_key(:lines)
		expect(poem[:lines]).to be_an(Array)
		expect(poem[:lines].first).to be_a(String)
		expect(poem).to have_key(:linecount)
		expect(poem[:linecount]).to be_a(String)
	end
end