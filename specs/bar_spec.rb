require("minitest/autorun")
require('minitest/rg')
require_relative("../bar.rb")
require_relative("../drinks.rb")
require_relative("../guests.rb")
require_relative("../rooms.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Lager", 5.00)
    @drink2 = Drinks.new("Martini", 6.00)
    @drink3 = Drinks.new("Whisky", 7.00)
    @bar = Bar.new(200.00)
    @guest1 = Guests.new("", 10.00, "Disco")
    @disco_balls = Room.new("Disco Balls", "", "Disco", 2, [], 5.00)
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
    @bar.serve(@guest1, @drink2)
    assert_equal(4.00, @guest1.wallet())
    assert_equal(206.00, @bar.till())
    assert_equal(1, @bar.drink_count)
  end

  def test_guest_can_pay_entry_fee
    @disco_balls.add_guest(@guest1)
    @guest1.pay_fee(@disco_balls)
    assert_equal(5.00, @guest1.wallet())
    assert_equal(205, @bar.till())
  end
end
