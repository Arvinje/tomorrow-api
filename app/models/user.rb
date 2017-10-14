class User < ApplicationRecord
  has_many :visits

  validates :username, presence: true, length: { in: 4..20 }
end
