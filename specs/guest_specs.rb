require("minitest/autorun")
require_relative("../guest.rb")

class TestGuest < Minitest::Test

  def setup

    @guest1 = Guest.new("Chris", 8, 1, "19:30",50) 
    @guest2 = Guest.new("Caroline",4,2,"20:00",5)

    @guest = Guest.new("Charlie", 6, 3, "20:30",20)

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

  def test_account_balance
    assert_equal(50, @guest1.money)
  end

  def test_guest_can_afford_door_fee
    guest = @guest1
    can_afford_door_fee = let_me_in(guest, @reception)
    assert_equal(true, can_afford_door_fee)
  end #why can't I define let_me_in ???

end