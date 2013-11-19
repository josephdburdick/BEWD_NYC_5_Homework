

require_relative 'fizz_buzz'

# 1.upto(100) do |number|
#   puts FizzBuzz.new.call(number)
# end

1.upto(100) do |number|
  fb = FizzBuzz.new
  puts "The result for #{number} is #{fb.call(number)}"
  # puts FizzBuzz.new.call(number)
end

myarray = ["NYC","LA","SYD","LDN"]
myarray[0]
myarray[1]
myarray[-1]