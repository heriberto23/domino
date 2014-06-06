#this puts the value of the first argument in filename
filename = ARGV.first
#the character > is stored in prompt
prompt = "> "
#this opens a file named filename
txt = File.open(filename)

#this prints "Here's your file:" to the user
puts "Here's your file: #{filename}"
#this prints whatever is in the file filename to the screen
puts txt.read()

#this prints "I'll also ask you to type it again:" to the screen
puts "I'll also ask you to type it again:"
#this prints >
print prompt
#this will prompt user and will store whatever it is typed
#by user into file_again
file_again = STDIN.gets.chomp()
#this will store whatever is in file_again and store it in txt_again
txt_again = File.open(file_again)
#this prints whatever is in file file_again.
puts txt_again.read()