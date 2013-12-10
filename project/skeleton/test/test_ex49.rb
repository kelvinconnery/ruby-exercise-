require 'test/unit'
require_relative '../lib/ex49'

class ParserTests < Test::Unit::TestCase

	def test_parse_verb()
		#warning: this fails on purpose see the book
		Parser.parse_verb([false])
	end
end
		