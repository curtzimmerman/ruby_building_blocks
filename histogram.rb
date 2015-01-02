quit_code = ["q", "Q"]
print_histogram = ["p", "P"]

input = ""
histogram = {}

while !quit_code.include?(input) do
	puts "Enter a word(enter 'p' to print, 'q' to quit): "
	input = gets.chomp
	if print_histogram.include?(input) 
		puts histogram 
		next
	end
	if histogram.key?(input)
		histogram[input] += 1
	else
		histogram[input] = 1
	end
end 