class Hamming
	def self.compute(arg1, arg2)
		distance = 0
		if arg1.length != arg2.length
			raise ArgumentError
		end

		for i in 0..arg1.length
			if arg1[i] != arg2[i] then
				distance += 1
			end
		end
		return distance
	end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end