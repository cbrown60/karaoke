require("minitest/autorun")
require_relative("../guest.rb")

class TestGuest < Minitest::Test

def setup
  
  @guest1 = Guest.new("Chris", 8, 1, "19:30") 
  @guest2 = Guest.new("Caroline",4,2,"20:00")
 
  @guest = Guest.new("Charlie", 6, 3, "20:30")
  
end

def test_does_guest_exist
assert_equal("Chris",@guest1.name)
end

def test_guest_group_booking_size
assert_equal(8, @guest1.group_size)
end

def test_create_guest
  assert_equal(Guest, @guest.class())
   
 end 

 def test_checked_in? 
 assert_equal(true, @guest.checked_in)
 end
def test_checked_out?
assert_equal(true, @guest.checked_out)
end

# def test_add_new_guest
# assert_equal(@guest3,name.new_guest) 
# end

end