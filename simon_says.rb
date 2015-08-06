def echo(param)
	param
end

def shout(param)
	param.upcase!
end

def repeat(param, times = 2)
		response = ""
		for num in (1...times)
			response += param + " "
		end
		response += param
end

def start_of_word(word, num)
	word[0..num-1]
end

def first_word(phrase)
	char = 0
	response = ""
	while phrase[char] != " "
		response += phrase[char]
		char +=1
	end
	response
end

def titleize(param)
	p_temp = param.split
	p_temp.each do |word|
		if word != "and" && word != "or" && word != "over" && word != "the"
			word.capitalize!
		end
	end
	p_temp[0].capitalize!
	param = p_temp.join(" ")

end
