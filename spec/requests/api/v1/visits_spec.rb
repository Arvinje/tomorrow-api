require 'rails_helper'

RSpec.describe "Api::V1::Visits", type: :request do
  let(:current_user) { create :user }

  describe "POST /api/v1/hotspots/:hotspot_id/visit" do
    let(:hotspot) { create :hotspot }

    before do
      post api_v1_hotspot_visit_path(hotspot_id: hotspot.id),
            headers: { 'AUTHORIZATION' => current_user.api_key }
    end

    it 'creates a visit record' do
      expect(Visit.exists?(user: current_user, hotspot: hotspot)).to be true
    end

    it 'responds with 200' do
      expect(response).to have_http_status(201)
    end
  end
end
