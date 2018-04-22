class Bar

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @room = []
    @till = till
    @entrance_fee = 5.00
    @guests = []
  end


  def rooms_in_bar(room)
    for room_name in room
     @room << room
    end
 # p @room
  end

  def guest_pays_entrance_fee(fee)
     @till= @till + @entrance_fee
     p @till
     # @guests1.pay_entrance_fee(fee)
     # @guests1.wallet -= @entrance_fee
  end
  #couldn't get cross over with Guests class to work

  def guest_gets_admittance(guest)
     @guests << guest
     p @guests

   end
   #this put in the wallet amount as well.  How do I get only the name in?
   #change Guests to hashes?

end
