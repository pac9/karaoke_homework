require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../rooms')

class TestBar < MiniTest::Test

  def setup

     @bar = Bar.new("Karaoke Bar")
     @rooms = Rooms.new("Rock")
  end


  def test_bar_has_name
    assert_equal("Karaoke Bar", @bar.name)
  end

  def test_bar_has_rooms
    result = @bar.rooms_in_bar(@rooms)
    assert_equal(1, result.length)
  end

end
