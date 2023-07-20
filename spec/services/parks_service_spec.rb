require "rails_helper"

RSpec.describe "Park Service" do
  it "can search for park by state" do
    search = ParkService.new.park_by_state("TN")
    park = search[:data].first

    expect(search).to be_a(Hash)
    expect(park).to have_key(:fullName)
    expect(park[:fullName]).to be_a(String)

    expect(park).to have_key(:description)
    expect(park[:description]).to be_a(String)

    expect(park).to have_key(:directionsInfo)
    expect(park[:directionsInfo]).to be_a(String)

    expect(park[:operatingHours][0]).to have_key(:standardHours)
    expect(park[:operatingHours][0][:standardHours]).to be_a(Hash)
  end
end