class Rooms

attr_reader :name, :guest

  def initialize(name, guest)
    @name = name
    @guest = guest


  end

 def guest_has_name(name, guest)
      p guest.name
 end

end
