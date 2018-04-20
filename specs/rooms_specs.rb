require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Rock")

    # guests = ["John", "Gavin", "Jamie"]
    @guests = Guests.new("John")
    @songs = Songs.new("Paradise City")

    # @rooms2 = Rooms.new("Pop")
    # @rooms3 = Rooms.new("Ballads")

  end

  def test_room_has_name
    assert_equal("Rock", @rooms.name)
  end

 # def test_guest_has_name
 #    result = @rooms.guest_has_name(@rooms, @guests)
 #    assert_equal("John", result)
  # end


  def test_guest_can_check_in
    result = @rooms.check_guest_in(@guests)
    assert_equal(1, result.length)
  end
#was this the correct place to put .length?
  def test_guest_can_check_out
    @rooms.check_guest_in(@guests)
    result = @rooms.check_guest_out(@guests)
    assert_equal(0, result.length)
  end

  def test_song_playing
    result = @rooms.song_playing(@songs)
    assert_equal(1, result.length)
  end

end
