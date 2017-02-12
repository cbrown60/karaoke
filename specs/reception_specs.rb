require("minitest/autorun")
require_relative("../reception.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")



class TestReception < Minitest::Test

def setup
  @guest1 = Guest.new("Chris", 8, 1, "19:30") 
  @guest2 = Guest.new("Caroline",4,2,"20:00")

  # @room1 = Room.new(1, 10, "Chris")
  # @room2 = Room.new(2, 4, "Caroline")

  # @reception = Reception.new(@guest1,@guest2)
 


end
def test_does_guest_exist
assert_equal("Chris",@guest1.name)
end

def test_whats_guest2_booking_time
assert_equal("20:00", @guest2.time)
end

def test_has_guest1_arrived
assert_equal("checked in",@guest1.has_arrived )
end

def test_has_guest_left
assert_equal("checked out", @guest2.has_left)
end

def test_guest_has_room
assert_equal(1, @guest1.room_number )
end






end