require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Staying Alive", "Disco")
    @song2 = Songs.new("Itsy Bitsy", "Pop")
    @song3 = Songs.new("Stairway to Heven", "Rock")

    # @songs = Songs.new( { @song1, @song2, @song3 } )

    @guests = Guests.new("Madonna", 50, "Disco")
    @room = Room.new("Disco Balls", "", "Disco", 10, [])

  end

  def test_song_has_name
    assert_equal("Staying Alive", @song1.song_name())
  end

  def test_song_has_genre
    assert_equal("Disco", @song1.genre())
  end


end
