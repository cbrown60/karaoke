class Room
attr_accessor   :capacity 
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
 
  def is_there_room (guests, capacity)
    if guests[:group_size] < capacity[:capacity]
      return "sorry, too many guests"
    else
      return "this room has enough space for you"  

    end
  end

end