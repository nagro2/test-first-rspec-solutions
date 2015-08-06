class Book
	attr_accessor :title

	def title=(words)
		word_list = words.split
		non_cap_words = ["the", "and", "in", "of", "a", "an"]
		word_list.each do |word|
			if ! non_cap_words.include?(word)
				word.capitalize!
			end
		end
		word_list[0].capitalize!
		@title = word_list.join(" ")
	end
end
