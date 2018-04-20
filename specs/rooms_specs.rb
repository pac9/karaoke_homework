require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')

class TestRooms < MiniTest::test

  def setup
    @rooms = Rooms.new("Rock")
    # @rooms2 = Rooms.new("Pop")
    # @rooms3 = Rooms.new("Ballads")

  end

  def test_room_has_name
    assert_equal("Rock", @rooms.name)
  end

end
