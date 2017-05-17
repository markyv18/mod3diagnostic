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
        expect(page).to have_content("here are your alternative fuel stations nearby")
    end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to ELEC and LPG
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
