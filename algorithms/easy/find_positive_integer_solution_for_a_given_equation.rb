# frozen_string_literal: true

# 	This is the custom function interface.
#	You should not implement it, or speculate about its implementation
#	class CustomFunction:
#		def f(self, x, y):
# 			Returns f(x, y) for any given positive integers x and y.
# 			Note that f(x, y) is increasing with respect to both x and y.
# 			i.e. f(x, y) < f(x + 1, y), f(x, y) < f(x, y + 1)
# 		end
# 	end
#

# @param {CustomFunction} customfunction
# @param {Integer} z
# @return {List[List[Integer]]}
def find_solution(customfunction, z)
  (1..z).each_with_object([]) do |x, result|
    (1..z).each do |y|
      result << [x, y] if customfunction.f(x, y) == z
    end
  end
end
