class Room

  attr_reader :name, :songs, :guests, :genre, :capacity, :till, :fee

  def initialize(name, songs, guests, genre, capacity, till, fee)

    @name = name
    @songs = []
    @guests = []
    @genre = genre
    @capacity = capacity
    @till = till
    @fee = fee

  end

  def guest_count
    @guests.count
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_capacity(room)
    return @capacity
  end

# This is wrong, I know.
  def admit_guest(room)
    # @guests.first(@capacity)
    if @guests.count >= @capacity.count
    return "Sorry Full!"
  end
  end


  def pay_fee(room)
    @till -= room.fee()
  end

end
