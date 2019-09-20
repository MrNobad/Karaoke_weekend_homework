class Room

  attr_reader :name, :songs, :guests, :genre, :capacity

  def initialize(name, songs, guests, genre, capacity)

    @name = name
    @songs = []
    @guests = []
    @genre = genre
    @capacity = 0

  end

  def guest_count
    return @guests.count
  end

  def add_guest(guest)
    @guests.push(guest)
  end



end
