
class Guest
  attr_accessor :name, :time, :group_size, :room_number
  def initialize (name, group_size, room_number, time )
    @name = name
    @group_size = group_size
    @room_number = room_number
    @time = time
    # @guest = guest
  end

  def checked_in
   return true
 end

 def checked_out
  return true
end

def has_arrived 
  if checked_in == true 
    return "checked in"
  else
    return 
    "has not checked in"
  end
end

def has_left
  if checked_out ==true
    return "checked out"
  else
    return 
    "this guest has not checked out"
  end
end





end