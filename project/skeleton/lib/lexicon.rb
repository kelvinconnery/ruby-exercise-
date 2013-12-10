class Lexicon

	def scan(stuff)

		def convert_number(stuff)
			begin
				Integer(stuff)
			rescue ArgumentError
				return nil
			end
		end

		hash = {'north' => 'direction', 'south' => 'direction', 'east' => 'direction',
				'go' => 'verb', 'kill' => 'verb', 'eat' => 'verb',
				'the' => 'stop', 'in' => 'stop', 'of' => 'stop',
				'bear' => 'noun', 'princess' => 'noun',
				'3' => 'number', '91234' => 'number',
			}

		words =stuff.split()

		words.map do |word|
			if convert_number(word)
				classification = 'number'
			elsif !hash.has_key?(word)
				classification = 'error'
			else 
				classification = hash[word].to_sym
			end
			
			Pair.new(classification,word)

		end
	end
end

Pair = Struct.new(:token,:word)				
												

 #
				 #'IAS' => 'error',


# Pair = Struct.new(:token,:word)
# first_word = Pair.new("direction","north")
# second_word = Pair.new("verb","go")
# sentence = [first_word, second_word]