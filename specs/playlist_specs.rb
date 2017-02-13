require("minitest/autorun")
require_relative("../song")
require_relative("../playlist.rb")


class TestPlaylist < Minitest::Test

  def setup

    @song1 = Song.new("romantic beats","the romance brigade")
  
    @song2 = Song.new("metal beats","the metal brigade")
    
    @song3 = Song.new("happy beats","the beat brigade")
    
   @playlist = Playlist.new([@song1, @song2, @song3])

  end

  def test_are_there_songs
   assert_equal(3, @playlist.number_of_songs)
  end




end 