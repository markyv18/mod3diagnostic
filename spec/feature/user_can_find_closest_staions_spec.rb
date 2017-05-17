require 'rails_helper'

# As a user
# When I visit "/"
describe 'as a user i visit the root page' do
    it 'and i can fill in a search, click -Locate- & see 10 ELEC LPG stations' do

      visit '/'

      within('.search-field') do
        fill_in "zipcode", with: "80203"
      end

        click_on('Locate')
        expect(current_path).to eq('/search')
        expect(page).to have_content("Find Nearest Alternative Fuel Stations")
        expect(page).to have_content("80203")
    end
end
