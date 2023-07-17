require 'rails_helper'

RSpec.describe 'Parks API' do
  describe "authenticate API key" do
    it "successfully authenticates API key" do
      json_response = File.read('spec/fixtures/park_data.json')
      response = stub_request(:get, "https://developer.nps.gov/api/v1/parks").
        to_return(status: 200, body: json_response)
      parks_parse = JSON.parse(response.response.body, symbolize_names: true)
      parks_data = parks_parse[:data]
      # require 'pry'; binding.pry
      expect(parks_parse[:total]).to eq("470")
      expect(parks_data).to be_an(Array)
      expect(parks_data.count).to eq(50)
    end
  end

  describe "get all national park data" do
    it "gets list of all state names" do
      json_response = File.read('spec/fixtures/park_data.json')
      response = stub_request(:get, "https://developer.nps.gov/api/v1/parks").
        to_return(status: 200, body: json_response)
      parks_parse = JSON.parse(response.response.body, symbolize_names: true)

    end
  end
end