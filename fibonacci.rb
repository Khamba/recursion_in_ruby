def fibs(n)
	arr = [0, 1]
	for i in 2...n
		arr << arr[i-2] + arr [i-1]
	end
	return arr
end

def fibs_rec(n)
	n > 2 ? fibs_rec(n-2) + fibs_rec(n-1) : n-1
end

puts "Enter n for fibonacci sequence: "
n = gets.chomp
n = n.to_i
puts "By iteration: #{fibs(n).last}"
puts "By recursion: #{fibs_rec(n)}"