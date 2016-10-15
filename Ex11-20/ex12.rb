print "Give me a number: "
number = gets.chomp.to_i

bigger_num = number * 100
puts "A bigger number is #{bigger_num}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number would be #{smaller}."
