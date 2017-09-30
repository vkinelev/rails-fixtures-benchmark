require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def test_discounters
    Product.create! title: 'Pink Hat', price: 1500
    Product.create! title: 'Dark Hat', price: 1900
    Product.create! title: 'Yellow Hat', price: 9900

    assert_equal 2, Product.discounters.count
  end

  # Make MiniTest think that we have X number of tests instead of one in this class
  #
  # Default implementation returns all methods starting with `test_`
  # in the ProductTest class. MiniTests does not check a presence of those methods
  # on this step, thus we can override it and return an array with any number
  # of symbols. Symbols in the array have a predifiend format and this rule
  # is used to handle a call to the fake methods with a real `test_discounters`
  # with a help of `method_missing` method.
  def self.runnable_methods
    Array.new(500) { |i| "test_discounters_#{i}".to_sym }
  end

  def method(symbol)
    if symbol.id2name.start_with?("test_discounters")
      super(:test_discounters)
    else
      super
    end
  end

  def method_missing(symbol)
    if symbol.id2name.start_with?("test_discounters")
      test_discounters
    else
      super
    end
  end
end
