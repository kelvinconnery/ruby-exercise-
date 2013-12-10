from_file, to_file = ARGV
script = $0

puts "Copying form #{from_file} to #{to_file}"

#we could do these two on one line too, how?

input = File.open(from_file)
indata = input.read()

puts "the input file is #{indata.length} bytes long"

puts "does the output file exist? #{File.exist? to_file}"
puts "Ready,hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done"

output.close()
input.close()
