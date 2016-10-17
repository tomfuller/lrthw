filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Put the file name again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
