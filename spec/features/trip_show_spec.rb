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
    it 'will see a list of trails and their name will be a link' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 654, name: "sfdg", address: "gfad")

      visit trip_path(trip_1)
      click_on trail_1.name

      expect(current_path).to eq(trail_path(trail_1))
    end

    it 'seees the total trip distance, average hiking distance, longest hiking distance, shortest hiking distance for trip' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 20, name: "sfdg", address: "gfad")
      trail_2 = trip_1.trails.create!(length: 10, name: "sfdg", address: "gfad")

      visit trip_path(trip_1)
    end
  end
end