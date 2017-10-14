require 'rails_helper'

RSpec.describe Visit, type: :model do
  it { is_expected.to respond_to :user_id }
  it { is_expected.to respond_to :hotspot_id }
  it { is_expected.to respond_to :created_at }
  it { is_expected.to respond_to :updated_at }

  describe "ActiveModel Validations" do
  end

  describe "ActiveRecords Associations" do
    it { is_expected.to belong_to(:user).counter_cache(true) }
    it { is_expected.to belong_to(:hotspot).counter_cache(true) }
  end
end
