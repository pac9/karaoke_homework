class Bar

  attr_reader :name

  def initialize(name)
    @name = name
    @room = []
  end


  def rooms_in_bar(room)
    @room << room
  end


end
