class Hotspot < ApplicationRecord
  validates :name,      presence: true, length: { in: 4..100 }
  validates :latitude,  presence: true
  validates :longitude, presence: true
end
