require 'rails_helper'

describe ToneService do
	it 'fetch_tone()' do
		
		tone_data = ToneService.fetch_tone('what sort of tone am I?')

		expect(tone_data).to be_an(Hash)

		tones = tone_data[:document_tone][:tones]

		expect(tones).to be_an(Array)

		tone = tones.first

		expect(tone).to be_a(Hash)
		expect(tone).to have_key(:score)
		expect(tone[:score]).to be_a(Float)
		expect(tone).to have_key(:tone_id)
		expect(tone[:tone_id]).to be_a(String)
		expect(tone).to have_key(:tone_name)
		expect(tone[:tone_name]).to be_a(String)
	end
end