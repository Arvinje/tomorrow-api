class Hotspot < ApplicationRecord
  has_many :visits

  validates :name,      presence: true, length: { in: 4..100 }
  validates :latitude,  presence: true
  validates :longitude, presence: true
end
