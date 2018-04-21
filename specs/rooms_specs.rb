require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Rock")

    @guests1 = Guests.new("John")
    @guests2 = Guests.new("Gavin")
    @guests3 = Guests.new("Jamie")
    @guests = [@guests1, @guests2, @guests3]

    @songs1 = Songs.new("Paradise City")
    @songs2 = Songs.new("I am the one and only")
    @songs3 = Songs.new("Beautiful")
    @songs = [@songs1, @songs2, @songs3]

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
    assert_equal(3, result.length)
  end
#was this the correct place to put .length?
  def test_guest_can_check_out
    @rooms.check_guest_in(@guests)
    @rooms.check_guest_out(@guests1)
    @rooms.check_guest_out(@guests2)
    result = @rooms.check_guest_out(@guests)
    assert_equal(1, result.length)
  end

  def test_song_playing
    result = @rooms.song_playing(@songs)
    assert_equal(3, result.length)
  end

end
