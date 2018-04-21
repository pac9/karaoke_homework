class Guests

attr_reader  :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end


  def sufficient_funds?(fee)
     return wallet >= fee
     p wallet
   end

  def pay_entrance_fee(fee)
   if sufficient_funds?(fee)
     @wallet -= fee

   end
 end

end
