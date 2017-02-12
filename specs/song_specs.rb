require("minitest/autorun")
require_relative("../song.rb")

class TestSong < Minitest::Test

def test_song_has_content
song = Song.new("movie faves", "the movie co")
assert_equal("movie faves", song.title)
end

end