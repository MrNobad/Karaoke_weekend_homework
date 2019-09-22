require("minitest/autorun")
require('minitest/rg')
require_relative("../guests.rb")
require_relative("../rooms.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Madonna", 50.00, "Disco")
    @disco_balls = Room.new("Disco Balls", "", "Disco", 2, [], 100, 5.00)
  end

  def test_customer_has_name
    assert_equal("Madonna", @guest.name())
  end

  def test_customer_has_money
    assert_equal(50.00, @guest.wallet())
  end

  def test_customer_can_pay_entry_fee__decreases_money
    @guest.pay_fee(@disco_balls)
    assert_equal(45.00, @guest.wallet())
  end
end
