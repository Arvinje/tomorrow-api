class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..20 }
end
