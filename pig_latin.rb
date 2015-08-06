def translate(original)

	def is_a_vowel(letter)
		vowels = ["a", "e", "i", "o", "u"]
		vowels.each do |vowel|
			if letter == vowel
				return true
			end
		end
		false
	end



	def translate_word(word)	
		if word[0..2] == "sch" 
			"#{word[3..word.length-1]}schay"
		elsif word[0..1] == "qu"
			"#{word[2..word.length-1]}quay"
		elsif ! is_a_vowel(word[0]) && word[1..2] == "qu"
			"#{word[3..word.length-1]}#{word[0]}quay"
		elsif is_a_vowel(word[0]) # first letter is a vowel
			"#{word}ay"
		elsif ! is_a_vowel(word[1]) && ! is_a_vowel(word[2]) # first three letters are consonants
			"#{word[3..word.length-1]}#{word[0]}#{word[1]}#{word[2]}ay"
		elsif ! is_a_vowel(word[1]) # first two letters are consonants
			"#{word[2..word.length-1]}#{word[0]}#{word[1]}ay"
		else # first letter is a consonant
			"#{word[1..word.length-1]}#{word[0]}ay"
		end
	end # of translate_word
	
	original_list = original.split
	original_list.map! { |original_word| translate_word(original_word) }
	translated = original_list.join(" ")


end
