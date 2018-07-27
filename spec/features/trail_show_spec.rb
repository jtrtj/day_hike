require 'rails_helper'

describe 'a visitor' do
  context 'visiting trails/id' do
    it 'sees name, address, count of trips that include it and total length of every trip that includes the trail' do
      trail_1 = Trail.create(name: 'gasdf', length: 10, address: 'gytr')
      trail_2 = Trail.create(name: 'ytr', length: 30, address: 'poiuy')
      trip_1 = Trip.create(name: "trip1")
      trip_2 = Trip.create(name: "trip2")
      TripTrail.create(trip: trip_1, trail: trail_1)
      TripTrail.create(trip: trip_1, trail: trail_2)
      TripTrail.create(trip: trip_2, trail: trail_1)

      visit trail_path(trail_1)

      expect(page).to have_content("Name: #{trail_1.name}")
      expect(page).to have_content("Address: #{trail_1.address}")
      expect(page).to have_content("Total length of every hiking trip that includes this trail: 50")
      expect(page).to have_content("Total number of hiking trips where this trail was included: 2")
    end
  end
end