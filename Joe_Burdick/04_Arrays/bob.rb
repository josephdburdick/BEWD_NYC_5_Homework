class Bob 

	def hey message
		@message = message

		# msgArray = message.split(" ")
		# if message.strip.empty? == true
		# 	responses[3]
		# elsif message == message.upcase && message.match(/[a-zA-Z]/)
		# 	responses[1]			
		# elsif message[-1] == "?"
		# 	responses[2]
		# else
		# 	responses[0]
		# end 
		if screaming?
			responses[1]
		elsif message.strip.empty?
			responses[3]
		elsif message.end_with? '?'
			responses[2]
		else
			responses[0]
		end
			
	end
	def screaming?
		@message == @message.upcase && !@message.empty? && @message =~ /[a-zA-Z]/
	end
	# def questioning?
	# 	@messag
	def responses 
		@responseArray ||= ["Whatever.", "Woah, chill out!", "Sure.", "Fine. Be that way!"]
	end

end