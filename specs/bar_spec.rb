require("minitest/autorun")
require('minitest/rg')
require_relative("../bar.rb")
require_relative("../drinks.rb")
require_relative("../guests.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Lager", 5.00)
    @drink2 = Drinks.new("Martini", 6.00)
    @drink3 = Drinks.new("Whisky", 7.00)
    @bar = Bar.new(200.00)
    @guests = Guests.new("", 10.00, "Disco")
  end

  def test_pub_has_till
    assert_equal(200.00, @bar.till())
  end

  def test_can_add_drinks
   @bar.add_drink(@drink1)
   assert_equal(1, @bar.drink_count)
 end

  def test_pub_can_serve_drink
    @bar.add_drink(@drink2)
    @bar.serve(@guests, @drink2)
    assert_equal(6.00, @guests.wallet())
    assert_equal(205.00, @bar.till())
    assert_equal(1, @bar.drink_count)
  end


end
