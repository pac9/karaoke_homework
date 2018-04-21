class Bar

  attr_reader :name

  def initialize(name)
    @name = name
    @room = []
  end


  def rooms_in_bar(room)
    for room_name in room
     @room << room
   end
     # p @room
  end


end
