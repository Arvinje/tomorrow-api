class User < ApplicationRecord
  has_many :visits

  validates :username, presence: true, length: { in: 4..20 }

  before_create :set_api_key

  def set_api_key
    begin
      self.api_key = SecureRandom.hex
    end while User.exists?(api_key: api_key)
  end
end
