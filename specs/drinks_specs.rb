require("minitest/autorun")
require('minitest/rg')
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Lager", 5.00)
  end

  def test_drink_has_name
    assert_equal("Lager", @drink.name())
  end

  def test_drink_has_price
    assert_equal(5.0, @drink.price())
  end

end
