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
		left_side = left_side
		right_side = right_side
		if left_side > 2 && right_side > 2
			
			merge_sort(arr, left_side, right_side)
		elsif left_side == 2 || left_side == 1 && right_side == 2 || right_side == 1
			if left_side[left_side.length-2] > left_side[left_side.length-1]
				a = left_side[left_side.length-1]
				left_side[left_side.length-1] = left_side[left_side.length-2]
				left_side[left_side.length-2] = a
			end
		else

		end
			
	end

end

r = Recursion.new
p r.fibs_rec(3)