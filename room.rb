class Room
attr_accessor   
  def initialize (number, capacity, booking_name, music)

  @number = number
  @capacity = capacity 
  @booking_name = booking_name 
  @music = []

  end

  def song_count
    return @music.length 
  end

  def add_song (song)
  @music << song
  end
 

end