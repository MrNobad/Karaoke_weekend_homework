class Songs

  attr_reader :song_name, :genre

  def initialize(song_name, genre)

    @song_name = song_name
    @genre = genre

    # @songs = { song_name, genre }

  end
end
