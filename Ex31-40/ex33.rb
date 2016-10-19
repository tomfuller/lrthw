
def count(u)
  i = 0

  numbers = []
while i < u
  puts "At the the top 'i' is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom 'i' is #{i}"
end
puts "The numbers: "
end

count(6)
numbers.each {|num| puts num }
