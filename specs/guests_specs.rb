require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new("John", 50.00)
    @bar= 5.00
    # @guests2 = Guests.new("Gavin")
    # @guests3 = Guests.new("Jamie")
  end

   def test_guest_has_name

     assert_equal("John", @guests.name)
   end

  def test_guest_has_money
    assert_equal(50.00, @guests.wallet)
  end

  def test_customer_can_pay_entrance__decreases_money
    @guests.pay_entrance_fee(@bar)
    assert_equal(45.00, @guests.wallet())
  end


  def test_sufficient_funds__true_if_enough
      assert_equal(true, @guests.sufficient_funds?(@bar))
    end

end
