require 'rails_helper'

describe 'a visitor' do
  context 'visiting /trips' do
    it 'will see a list of all hiking trip names all their names will be links to trip show page' do
      trip_1 = Trip.create!(name: 'gasdf')
      trip_2 = Trip.create!(name: 'ggfdf')

      visit trips_path

      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)

      click_link trip_1.name

      expect(current_path).to eq(trip_path(trip_1))
    end
  end
end