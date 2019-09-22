require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Staying Alive", "Disco")
    @song2 = Songs.new("Itsy Bitsy", "Pop")
    @song3 = Songs.new("Stairway to Heaven", "Rock")

    @guest1 = Guests.new("Madonna", 50, "Disco")
    @guest2 = Guests.new("Michael", 100, "Pop")
    @guest3 = Guests.new("George", 120, "Rock")

    @disco_balls = Room.new("Disco Balls", "", "Disco", 2, [], 100, 5.00)
    @balad_heaven = Room.new("Balad Heaven", "", "Pop", 3, [], 100, 5.00)
    @rocking_room  = Room.new("Rocking Room", "", "Rock", 1, [], 100, 7.00)


  end

  def test_guest_count()
    return @guests
  end

  def test_room_can_add_guest()
    @disco_balls.add_guest(@guest1)
    @disco_balls.add_guest(@guest2)
    assert_equal(2, @disco_balls.guests.length)
  end

  def test_room_can_remove_guest()
    @disco_balls.add_guest(@guest1)
    @disco_balls.add_guest(@guest2)
    @disco_balls.remove_guest(@guest1)
    assert_equal(1, @disco_balls.guests.length)
  end

  def test_room_can_add_songs()
    @disco_balls.add_song(@song1)
    @disco_balls.add_song(@song2)
    assert_equal(2, @disco_balls.songs.length)
  end

  def test_add_capacity()
    return @disco_balls.capacity
  end

def test_admit_guest()
    @disco_balls.add_guest(@guest1)
    @disco_balls.add_guest(@guest2)
    @disco_balls.admit_guest(@guest3)
    assert_equal("Sorry Full!", @disco_balls.admit_guest(""))
  end

  def test_guest_can_pay_entry_fee
    @guest1.pay_fee(@disco_balls)
    assert_equal(105, @disco_balls.till())
  end

  # def test_customer_can_enter_room
  #   @disco_balls.add_guest(@guest1)
  #   @disco_balls.enter_room(@guests, @fee)
  #   assert_equal(5.00, @guests.wallet())
  #   assert_equal(206.00, @bar.till())
  #   assert_equal(1, @bar.drink_count)
  # end

end
