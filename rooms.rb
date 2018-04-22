class Rooms

attr_reader :name

  def initialize(name)
    @name = name
    @guest = []
    @song = []


  end

#when tried to move guest and name of song up to attr_reader I had problems getting program to run.
 # def guest_has_name(name, guest)
 #      p guest.name
 # end



   def check_guest_in(guest)
      for person in guest
      @guest << person
    end
  # p guest
   end


   def check_room_can_admit_more_guests(guests)
        # @rooms.check_guest_in(guest)
       if (@guest.length) < 4
         return true
       end
  end



   def check_guest_out(guest)
      for name in @guest
        if name == guest
           @guest.delete(guest)
        end
      end
      # p @guest
   end



   def song_playing(song)
     for track in song
       @song << song
     end
     # p @song
   end


end
