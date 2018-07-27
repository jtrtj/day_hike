require 'rails_helper'

describe 'a visitor' do
  context 'visiting trips/id' do
    it 'will see a list of trails in trip' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 654, name: "sfdg", address: "gfad")

      visit trip_path(trip_1)

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.length)
      expect(page).to have_content(trail_1.address)
    end
  end
end