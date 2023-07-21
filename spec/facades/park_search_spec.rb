require "rails_helper"

RSpec.describe ParkSearch do
  describe "class methods" do
    it "returns all parks" do
      all_parks = ParkSearch.new.get_parks("TN")
      expect(all_parks).to be_an(Array)
      expect(all_parks.first).to be_a(Park)
      expect(all_parks.first.name).to be_a(String)
      expect(all_parks.first.description).to be_a(String)
      expect(all_parks.first.directions).to be_a(String)
      expect(all_parks.first.hours).to be_an(Hash)
    end
  end
end