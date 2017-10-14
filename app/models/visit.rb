class Visit < ApplicationRecord
  belongs_to :user,     counter_cache: true
  belongs_to :hotspot,  counter_cache: true
end
