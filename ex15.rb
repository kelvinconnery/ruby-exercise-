#accept the txt file
filename = ARGV.first 

#assign the prompt
prompt = "> "

#load the file to txt variable
txt =File.open(filename)

#print out the command and process the file
puts "Here's your file : #{filename}"
#read the file
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
#get input from user
file_again = STDIN.gets.chomp()
#load the file to txt_again
txt_again = File.open(file_again)
#print out the txt_again after read
puts txt_again.read()
