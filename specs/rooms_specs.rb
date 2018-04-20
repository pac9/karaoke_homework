require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
# require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Rock", @guests)
    @guests = Guests.new("John")

    # @rooms2 = Rooms.new("Pop")
    # @rooms3 = Rooms.new("Ballads")

  end

  def test_room_has_name
    assert_equal("Rock", @rooms.name)
  end

 def test_guest_has_name
    result = @rooms.guest_has_name(@rooms, @guests)
    assert_equal("John", result)
  end

end
