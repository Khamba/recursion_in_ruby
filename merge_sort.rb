def merge_sort(arr)
	return arr if arr.length <= 1
	merge(merge_sort(arr[0...arr.length/2]), merge_sort(arr[arr.length/2...arr.length]))
end

def merge(arr1, arr2)
	i, j = 0, 0
	sorted_arr = []
	while 
		if arr1[i] < arr2[j]
			sorted_arr << arr1[i]
			i += 1
		else
			sorted_arr << arr2[j]
			j += 1
		end
		if i == arr1.length
			for k in j...arr2.length
				sorted_arr << arr2[k]
			end
			break
		end
		if j == arr2.length
			for k in i...arr1.length
				sorted_arr << arr1[k]
			end
			break
		end
	end
	return sorted_arr
end

arr = []
50.times do
	arr << rand(50)+1
end

p merge_sort(arr)