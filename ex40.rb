class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end
	
	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end	
end

happy_bday = Song.new(["happy birthday to you","I dont want to get sued","so i'll stop right there"])

bulls_on_parade = Song.new(["they really around the family","with pocket full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()		