require 'rails_helper'

RSpec.describe "Api::V1::Visits", type: :request do
  let(:current_user) { create :user }

  describe "POST /api/v1/hotspots/:hotspot_id/visit" do
    let(:hotspot) { create :hotspot }

    context 'when user visits a new hotspot' do
      before do
        post api_v1_hotspot_visit_path(hotspot_id: hotspot.id),
              headers: { 'AUTHORIZATION' => current_user.api_key }
      end

      it 'creates a visit record' do
        expect(Visit.exists?(user: current_user, hotspot: hotspot)).to be true
      end

      it 'responds with 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when user visits an already visited hotspot' do
      before do
        hotspot.visits.create(user: current_user)
        post api_v1_hotspot_visit_path(hotspot_id: hotspot.id),
              headers: { 'AUTHORIZATION' => current_user.api_key }
      end

      it 'creates a visit record' do
        expect(Visit.exists?(user: current_user, hotspot: hotspot)).to be true
      end

      it 'responds with 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when user tries to visit a non-existent hotspot' do
      before do
        post api_v1_hotspot_visit_path(hotspot_id: 1234124),
              headers: { 'AUTHORIZATION' => current_user.api_key }
      end

      it 'has a message key' do
        expect(json_response).to have_key :message
      end

      it 'responds with 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
