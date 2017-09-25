class Product < ApplicationRecord

  scope :discounters, -> { where('price < 2000') }

  before_create :set_price

  def set_price
    self.price ||= 3000
  end
end
