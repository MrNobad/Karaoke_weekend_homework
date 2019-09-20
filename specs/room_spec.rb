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

    @disco_balls = Room.new("Disco Balls", "", "Disco", 2, [])
    @balad_heaven = Room.new("Balad Heaven", "", "Pop", 3, [])
    @rocking_room  = Room.new("Rocking Room", "", "Rock", 1, [])


  end

  def test_guest_count
    return @guests
  end

  def test_room_can_add_guest
     @disco_balls.add_guest(@guest1)
     assert_equal(1, @disco_balls.guests.length)
  end

  
end
