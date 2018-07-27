require 'rails_helper'

describe Trip do
  context 'instance methods' do
    it '#total_hiking_distance' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 20, name: "sfdg", address: "gfad")
      trail_2 = trip_1.trails.create!(length: 10, name: "sfdg", address: "gfad")

      expect(trip_1.total_hiking_distance).to eq(30)
    end

    it '#average_hiking_distance' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 20, name: "sfdg", address: "gfad")
      trail_2 = trip_1.trails.create!(length: 10, name: "sfdg", address: "gfad")

      expect(trip_1.average_hiking_distance).to eq(15)
    end

    it '#max_hiking_distance' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 20, name: "sfdg", address: "gfad")
      trail_2 = trip_1.trails.create!(length: 10, name: "sfdg", address: "gfad")

      expect(trip_1.max_hiking_distance).to eq(20)
    end

    it '#min_hiking_distance' do
      trip_1 = Trip.create!(name: 'gasdf')
      trail_1 = trip_1.trails.create!(length: 20, name: "sfdg", address: "gfad")
      trail_2 = trip_1.trails.create!(length: 10, name: "sfdg", address: "gfad")

      expect(trip_1.min_hiking_distance).to eq(10)
    end

  end
end