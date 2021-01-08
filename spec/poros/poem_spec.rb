require 'rails_helper'

describe Poem do
	it 'exists' do
		attr = {
			title: "A poem",
			author: "Some dude",
			lines: ["Here's", ' a', ' poem']
		}

		poem = Poem.new(attr)

		expect(poem).to be_a(Poem)
		expect(poem.title).to eq(attr[:title])
		expect(poem.author).to eq(attr[:author])
		expect(poem.poem_text).to eq(attr[:lines].join)
	end
end