require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../rooms')
require_relative('../guests')

class TestBar < MiniTest::Test

  def setup
    @guests1 = Guests.new("John", 50.00)
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

     @bar = Bar.new("Karaoke Bar", 5.00)
  end


  def test_bar_has_name

    assert_equal("Karaoke Bar", @bar.name)
  end

  # def test_bar_has_rooms
  #
  #
  #   assert_equal("Rock", @bar.room)
  # end
  def test_bar_has_till
   assert_equal(5.00, @bar.till)
  end

  def test_rooms_in_bar
    result = @bar.rooms_in_bar(@rooms)
    assert_equal(3, result.length)
  end

  def test_guest_pays_entrance_fee
    @bar.guest_pays_entrance_fee(@entrance_fee)

    assert_equal(10.00, @bar.till)
    # assert_equal(45.00, @guests1.wallet)
  end

  def test_guest_gets_admittance
     result = @bar.guest_gets_admittance(@guests1)
     assert_equal(1, result.length)
  end

end
