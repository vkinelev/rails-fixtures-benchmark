require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # self.pre_loaded_fixtures = false

  def self.runnable_methods
    Array.new(1000) { |i| "hey_man_#{i}".to_sym }
  end

  def method_missing(symbol)
    if symbol.id2name.start_with?("hey_man")
      hey_man
    else
      super
    end
  end

  def hey_man
    Product.create! title: 'Pink Hat', price: 1500
    Product.create! title: 'Dark Hat', price: 9900

    assert_equal 1, Product.discounters.count
  end
end
