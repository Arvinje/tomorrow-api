require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to respond_to :username }
  it { is_expected.to respond_to :api_key }
  it { is_expected.to respond_to :app_version }
  it { is_expected.to respond_to :os_version }
  it { is_expected.to respond_to :visits_count }
  it { is_expected.to respond_to :created_at }
  it { is_expected.to respond_to :updated_at }

  describe "ActiveModel Validations" do
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_length_of(:username).is_at_least(4).is_at_most(20) }
  end

  describe "ActiveRecords Associations" do
    it { is_expected.to have_many :visits }
  end

  describe "#set_api_key" do
    let(:user) { build :user, api_key: nil }

    it 'generates a new api_key' do
      user.set_api_key
      expect(user.api_key).to be_present
    end
  end
end
