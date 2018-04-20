require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new("John")
    # @guests2 = Guests.new("Gavin")
    # @guests3 = Guests.new("Jamie")
  end

   def test_guest_has_name
     assert_equal("John", @guests.name)
   end

end
