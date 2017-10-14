require 'rails_helper'

RSpec.describe Hotspot, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :latitude }
  it { is_expected.to respond_to :longitude }
  it { is_expected.to respond_to :description }
  it { is_expected.to respond_to :visits_count }
  it { is_expected.to respond_to :created_at }
  it { is_expected.to respond_to :updated_at }

  describe "ActiveModel Validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :latitude }
    it { is_expected.to validate_presence_of :longitude }
    it { is_expected.to validate_length_of(:name).is_at_least(4).is_at_most(100) }
  end

  describe "ActiveRecords Associations" do
    it { is_expected.to have_many :visits }
  end
end
