class Bob 

	def hey message
		msgArray = message.split(" ")
		
		if msgArray.last == "!"
			"Woah, chill out!"
		else
			"Whatever."
		end 
	end

end