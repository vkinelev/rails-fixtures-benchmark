class Artist < ApplicationRecord
  scope :popstars, -> { where('rating <= 2') }
end
