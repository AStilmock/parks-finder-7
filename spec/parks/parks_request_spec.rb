require 'rails_helper'

RSpec.describe 'Parks API' do
  describe "get state names for form" do
    it "gets list of all state names" do
      json_response = File.read('spec/fixtures/park_data.json')
      response = stub_request(:get, "https://developer.nps.gov/api/v1/parks").
        to_return(status: 200, body: json_response)
      parks_parse = JSON.parse(response.response.body, symbolize_names: true)
      require 'pry'; binding.pry
    end
  end
end