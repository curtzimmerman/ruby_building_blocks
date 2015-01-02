def caesar_cipher(input, shift)
	#split into words
	input = input.split(' ')
	#iterate over each word
	input.each_with_index do |word, index|
		new_word = ""
		#iterate over each character's ascii value
		word.each_byte do |letter|
			#determine if a letter should be shifted, or if it is punctuation.
			if valid_letter?(letter)
				letter += shift	
				#if shifted letter is still valid, add to new_word. If not, subtract 26 to loop back around to beginning of alphabet
				if valid_letter?(letter)
					new_word += letter.chr
				else
					letter -= 26
					new_word += letter.chr
				end	
			else
				#else keep punctuation in place
				new_word += letter.chr
			end
		end
		#add each word to input array
		input[index] = new_word
	end
	#join together input array into one string
	input.join(" ")
end

def valid_letter?(letter)
	#accepts ascii value of letter, and returns true if ascii value is a letter
	if (65..90).to_a.include?(letter) || (97..122).to_a.include?(letter)
		return true
	else
		return false
	end
end

print "Input to be encoded: "
input = gets.chomp
puts caesar_cipher(input, 5)


