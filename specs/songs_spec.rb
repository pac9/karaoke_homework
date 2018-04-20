require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @songs = Songs.new("Paradise City")
    # @songs2 = Songs.new("I am the one and only")
    # @songs3 = Songs.new("Beautiful")
  end

  def test_song_has_title
     assert_equal("Paradise City", @songs.title)
  end

end
