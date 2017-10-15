require 'rails_helper'

RSpec.describe "Api::V1::Hotspots", type: :request do
  let(:current_user) { create :user }

  describe "GET /api/v1/hotspots" do
    before do
      10.times{ create :hotspot }
      get api_v1_hotspots_path, headers: { 'AUTHORIZATION' => current_user.api_key }
    end

    it 'returns a json with all hotspots' do
      expect(json_response.size).to eq 10
    end

    it 'has the required keys' do
      expect(json_response.first[:id]).to eq Hotspot.first.id
      expect(json_response.first[:name]).to eq Hotspot.first.name
      expect(json_response.first[:latitude]).to eq Hotspot.first.latitude
      expect(json_response.first[:longitude]).to eq Hotspot.first.longitude
      expect(json_response.first[:description]).to eq Hotspot.first.description
    end

    it 'responds with 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/v1/hotspot" do
    let(:hotspot) { create :hotspot }

    before do
      get api_v1_hotspot_path(hotspot), headers: { 'AUTHORIZATION' => current_user.api_key }
    end

    it 'has the required keys' do
      expect(json_response[:id]).to eq hotspot.id
      expect(json_response[:name]).to eq hotspot.name
      expect(json_response[:latitude]).to eq hotspot.latitude
      expect(json_response[:longitude]).to eq hotspot.longitude
      expect(json_response[:description]).to eq hotspot.description
    end

    it 'responds with 200' do
      expect(response).to have_http_status(200)
    end
  end
end
