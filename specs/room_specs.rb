require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../playlist.rb")
require_relative("../song.rb")

class TestRoom < Minitest::Test

def setup

 @room = Room.new(4, 15,"Jenny", @music) 

 @guest1 = Guest.new("Chris", 8, 1, "19:30") 
 @guest2 = Guest.new("Caroline",4,2,"20:00")

 @song1 = Song.new("romantic beats","the romance brigade")

 @room1 = Room.new(1, 10, "Chris", @music)
 @room2 = Room.new(2, 4, "Caroline", @music)



 # @song_list = [@song1, @song2, @song3]
end

def test_add_new_room 
  assert_equal(Room, @room.class())
end

def test_add_playlist_to_room 
@room1.add_song(@song1)
assert_equal(1, @room1.song_count)
end


end