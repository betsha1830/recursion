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

end

r = Recursion.new
p r.fibs_rec(3)