class Recursion
	def fibs(size)
		numbers = [0,1]
		until size == 2
			numbers.push(numbers[numbers.length-1] + numbers[numbers.length-2])
			size -= 1
			if size < 2
				numbers = [0]
				size = 2
			end
		end
		numbers
	end

	def fibs_rec(size, nums = [0,1])
		size <= 2 ? nums : fibs_rec(size-1, nums.push(nums[nums.length-1] + nums[nums.length-2]))
	end

	def merge_sort(arr, left_side = [], right_side = [])
		
		left_side = arr[0..arr.length/2 -1]
		right_side = arr[arr.length/2 -1..arr.length-1]
		if left_side.length/2 >= 0 || right_side.length/2 >= 0
			merge_sort(arr[0..arr.length/2 -1], left_side, right_side)
			merge_sort(arr[arr.length/2 -1..arr.length -1], left_side, right_side)
		else 
			if left_side.length == 2
				if left_side[0] > left_side[1]
					temp = left_side[0]
					left_side[0] = left_side[1]
					left_side[1] = temp
				end
			end

		end
			
	end

end

r = Recursion.new
p r.fibs_rec(3)