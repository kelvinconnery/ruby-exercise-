def dead()
	puts @quips[rand(@quips.length())]
	Process.exit(1)
end	