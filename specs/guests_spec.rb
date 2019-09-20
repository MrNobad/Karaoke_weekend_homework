require("minitest/autorun")
require('minitest/rg')
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Madonna", 50.00, "Disco")
  end

  def test_customer_has_name
    assert_equal("Madonna", @guest.name())
  end

  def test_customer_has_money
    assert_equal(50.00, @guest.wallet())
  end

end
