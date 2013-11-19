class FizzBuzz

	#def call(number)		
		# if number % 3 == 0
			
		# 	if number % 5 == 0
		# 		"FizzBuzz"
		# 	else 
		# 		"Fizz"
		# 	end

		# elsif number % 5 == 0
		# 	"Buzz"
		# else
		# 	number
		# end
	#end

	# def call (number)
	# 	if (number % 15).zero?
	# 		"FizzBuzz"
	# 	elsif (number % 3).zero?
	# 		"Fizz"
	# 	elsif (number % 5).zero?
	# 		"Buzz"
	# 	else
	# 		number
	# 	end
	# end

	def call number
		result = ''
		if (number % 3).zero?
			result << "Fizz"
		end
		
		if (number % 5).zero?
			result << "Buzz"
		end

		if result.empty?
			number
		else 
			result
		end
	end
	
end


