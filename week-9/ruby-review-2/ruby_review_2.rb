# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
=begin

Error 1: "ruby_review_2.rb:24:in `<main>': uninitialized constant Song (NameError)""

Create class called Song.

Error 2: "ruby_review_2.rb:33:in `initialize': wrong number of arguments (2 for 0) (ArgumentError)"

Add initialize method to take two arguments.

Error 3: "ruby_review_2.rb:45:in `<main>': uninitialized constant Playlist (NameError)"

Create class Playlist

Error 4: "ruby_review_2.rb:53:in `initialize': wrong number of arguments (3 for 0) (ArgumentError)"

Add initialize method to Playlist class that takes 3 arguments

Error 5: "ruby_review_2.rb:66:in `<main>': undefined method `add' for #<Playlist:0x0000000145d9d0> (NoMethodError)"

Add 'add' method to Playlist class.

Error 6: "ruby_review_2.rb:48:in `add': wrong number of arguments (2 for 1) (ArgumentError)
        from ruby_review_2.rb:74:in `<main>'"

Define Playlist#add to take one or more arguments.

Error 7: "ruby_review_2.rb:80:in `<main>': undefined method `num_of_tracks' for #<Playlist:0x00000001a396b0> (NoMethodError)"

	Add method 'num_of_tracks' to Playlist class

Error 8: "ruby_review_2.rb:89:in `<main>': undefined method `play' for #<Song:0x000000008fd518> (NoMethodError)"

	Add method Song#play.

Error 9: "ruby_review_2.rb:98:in `<main>': undefined method `remove' for #<Playlist:0x000000023e11b8> (NoMethodError)"

	Add method Playlist#remove

Error 10: "ruby_review_2.rb:77:in `remove': wrong number of arguments (1 for 0) (ArgumentError)
        from ruby_review_2.rb:106:in `<main>'"

	Modify Playlist#remove to take an argument

Error 11: "ruby_review_2.rb:112:in `<main>': undefined method `includes?' for #<Playlist:0x00000000c54888> (NoMethodError)"

	Add method Playlist#includes?

Error 12: "ruby_review_2.rb:90:in `includes?': wrong number of arguments (1 for 0) (ArgumentError)
        from ruby_review_2.rb:120:in `<main>'"

	Modify Playlist#includes? to take an argument

Error 13: "ruby_review_2.rb:126:in `<main>': undefined method `play_all' for #<Playlist:0x00000002150598> (NoMethodError)"

	Add Playlist#play_all method

=end

# Initial Solution

class Song

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def play
		puts "Your device is now playing \"#{@title}\", can\'t you just hear it??"
	end

	def display
		puts @title + ", by the artist: " + @artist
	end

end

class Playlist

	def initialize(*songs)
		@songs = songs
	end

	def add(*songs)
		songs.each { |song| @songs << song }
	end

	def num_of_tracks
		@songs.size
	end

	def remove(song)

	end

	def includes?(song)
		@songs.include?(song)
	end

	def play_all
		@songs.each do |song|
			song.play
			sleep(3)
		end
	end

	def display
		@songs.each {|song| song.display}
	end

end




# Refactored Solution






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