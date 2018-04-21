require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../rooms')

class TestBar < MiniTest::Test

  def setup

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
