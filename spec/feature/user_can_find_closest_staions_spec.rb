require 'rails_helper'

# As a user
# When I visit "/"
describe 'as a user' do

  context 'when i visit the root path' do
    it 'expect to see a search form' do
      visit('/')
      expect(current_path).to eq '/'
      expect(page).to have_content("zipcode")
    end
  end

  # And I fill in the search form with 80203
  # And I click "Locate"
  # Then I should be on page "/search" with parameters visible in the url
  xcontext 'and fill in search form with -80203- and click -Locate-' do
    it 'i should be on a search page with parameters visible in the url' do

      within(".search_form") do #html element
        fill_in "zipcode", with: "80203"
      end

      click_link('Locate')

      expect(current_path).to eq('/search')
      expect(page).to have_content("80203")
    end

  # # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
  # # And the stations should be limited to Electric and Propane
  # # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  #   it 'i should also see 10 closest stations within 6 miles sorted by distance to them and only electric and propane' do
  #
  #     within(".search_form") do
  #     fill_in "q", with: "80203"
  #
  #     click_link('Locate')
  #
  #     expect(current_path).to eq('/search')
  #     expect(page).to have_content("80203")
  end
end
