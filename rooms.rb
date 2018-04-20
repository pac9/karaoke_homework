class Rooms

attr_reader :name

  def initialize(name)
    @name = name
    @guest = []


  end

 # def guest_has_name(name, guest)
 #      p guest.name
 # end

 def check_guest_in(guest)
  @guest << guest
 end

 def check_guest_out(guest)
  for name in @guest
    if name == guest
      @guest.shift
    end
  end

 end

end
