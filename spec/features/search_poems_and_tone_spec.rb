require 'rails_helper'

describe 'As a user when I visit root' do
	it "I search for 'Emily' and am taken to '/search' where I see 10 poems with tone" do
		visit root_path

		fill_in :author, with: 'Emily'
		click_on 'Get Poems'

		expect(current_path).to eq('/search')
		within(first('.poem')) do
			expect(page).to have_content('Emily')
			expect(page).to have_css('.title')
			expect(page).to have_css('.author')
			expect(page).to have_css('.poem')
			expect(page).to have_css('.tone')
		end
	end
end