def substrings(search_array, dictionary)
	#initialize all hashes with 0 for value
	matches = Hash.new(0)
	search_array = search_array.split(' ')
	#loop through dictionary first, searching all words in search_array for any substrings that match the dictionary entry
	dictionary.each do |entry|
		#to determine if the entry is matched, use String.include? method. Loop through all words in the search_array
		search_array.each do |search|
			if search.downcase.include? entry
					matches[entry] += 1
			end
		end
	end
	return matches

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

