# Create a Playlist from Driver Code

# I worked on this challenge with Patrick DeWitte.
# I spent 2 hours on this challenge.


# Pseudocode
# Error 1: NameError: uninitialized constant Song 
# Solution1: Create a new class called song

# Error 2: ArgumentError: wrong number of arguments (given 2, expected 0) 
# Solution2: Create initialize method within the class that accepts 2 arguments
#  -Setup instance variables within init method

# Error 3: NameError: uninitialized constant Playlist 
# Solution 3: Create new class called Playlist
#  -Create initialize method with splat argument for songs

# Error 4: NoMethodError: undefined method `add' for #<Playlist:0x00000000fb1440> 
# Solution 4: Create an add method within the playlist class

# Error 5: NoMethodError: undefined method `num_of_tracks' for #<Playlist:0x000000017d
# Solution 5: Create a method called num_of_tracks within the Playlist class

# Error 6: NoMethodError: undefined method `play' for #<Song:0x00000002b44900>
# Solution 6: Create a play method within the Song class

# Error 7: NoMethodError: undefined method `remove' for #<Playlist:0x0000000272f798> 
# Solution 7: Create a remove method within the Playlist class

# Error 8: NoMethodError: undefined method `includes?' for #<Playlist:0x00000001ba2ce0
# Solution 8: Create an includes? method within the playlist Class
#  -Allow the method to accept one argument

# Error 9: NoMethodError: undefined method `play_all' for #<Playlist:0x0000000101f990>
# Solution 9: Create a method called play_all within the Playlist Class


# Initial Solution

# class Song
  
#   attr_reader :song, :artist
  
#   def initialize(song, artist)
#     @song = song
#     @artist = artist
#   end
  
#   def play
#     puts "You are now listening to #{@song} by #{@artist}"
#     sleep(1)
#   end
  
# end

# class Playlist
  
#   def initialize(*songs)
#     @songs = songs
#   end
  
#   def add(*songs)
#     songs.each { |song| @songs << song }
#   end
  
#   def num_of_tracks
#     @songs.size
#   end
  
#   def remove(song)
#     @songs.delete(song)
#   end
  
#   def includes?(song)
#     @songs.include?(song)
#   end
  
#   def play_all
#     @songs.each {|song| song.play }
#   end
  
#   def display
#     @songs.each do |song|
#       puts song.song + " by the artist: " + song.artist
#     end
#   end
  
# end


# Refactored Solution

class Song
  
  attr_reader :song, :artist
  
  def initialize(song, artist)
    @song = song
    @artist = artist
  end
  
  def play
    puts "You are now listening to #{@song} by #{@artist}"
    sleep(1)
  end
  
end

class Playlist
  
  def initialize(*songs)
    @songs = songs
  end
  
  def add(*songs)
    @songs.concat(songs)
  end
  
  def num_of_tracks
    @songs.size
  end
  
  def remove(song)
    @songs.delete(song)
  end
  
  def includes?(song)
    @songs.include?(song)
  end
  
  def play_all
    @songs.each {|song| song.play }
  end
  
  def display
    @songs.each { |song| puts song.song + " by the artist: " + song.artist }
  end
  
end







# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# Reflection

# There was no Reflection for this Challenge.