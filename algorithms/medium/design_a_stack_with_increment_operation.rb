# frozen_string_literal: true

class CustomStack
  attr_reader :stack, :max_size

  # :type max_size: Integer
  def initialize(max_size)
    @max_size = max_size
    @stack = []
  end

  # :type x: Integer
  # :rtype: Void
  def push(x)
    stack << x unless stack.size >= max_size
  end

  # :rtype: Integer
  def pop
    stack.pop || -1
  end

  # :type k: Integer
  # :type val: Integer
  # :rtype: Void
  def increment(k, val)
    [k, stack.size].min.times { |i| stack[i] += val }
  end
end

# Your CustomStack object will be instantiated and called as such:
# obj = CustomStack.new(max_size)
# obj.push(x)
# param_2 = obj.pop()
# obj.increment(k, val)
