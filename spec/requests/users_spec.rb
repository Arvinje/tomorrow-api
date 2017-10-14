require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /api/users" do
    context "when fields are valid" do
      let(:valid_attributes) { { username: "sample_user", character: "Cube", agent: "Android/4.2 1.0" } }

      before { post '/api/users', params: valid_attributes }

      it 'creates a valid user' do
        expect(json_response.length).to eq 1
        expect(json_response[:api_key]).to be_present
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(:created)
      end
    end
  end
end
