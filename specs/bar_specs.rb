require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../rooms')

class TestBar < MiniTest::Test

  def setup
    # @guests1 = Guests.new("John")
    # @guests2 = Guests.new("Gavin")
    # @guests3 = Guests.new("Jamie")
    # @guests = [@guests1, @guests2, @guests3]
    #
    # @songs1 = Songs.new("Paradise City")
    # @songs2 = Songs.new("I am the one and only")
    # @songs3 = Songs.new("Beautiful")
    # @songs = [@songs1, @songs2, @songs3]


     @rooms1 = Rooms.new("Rock")
     @rooms2 = Rooms.new("Pop")
     @rooms3 = Rooms.new("Ballads")
     @rooms = [@rooms1, @rooms2, @rooms3]
     # @rooms = Rooms.new(rooms)

     @bar = Bar.new("Karaoke Bar")
  end


  def test_bar_has_name

    assert_equal("Karaoke Bar", @bar.name)
  end

  # def test_bar_has_rooms
  #
  #
  #   assert_equal("Rock", @bar.room)
  # end

  def test_rooms_in_bar
    result = @bar.rooms_in_bar(@rooms)
    assert_equal(3, result.length)
  end

end
