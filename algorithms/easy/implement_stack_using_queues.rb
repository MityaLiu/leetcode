# frozen_string_literal: true

class MyStack
  attr_reader :stack

  # Initialize your data structure here.
  def initialize
    @stack = []
  end

  # Push element x onto stack.
  # :type x: Integer
  # :rtype: Void
  def push(x)
    stack.push(x)
  end

  # Removes the element on top of the stack and returns that element.
  # :rtype: Integer
  def pop
    stack.pop
  end

  # Get the top element.
  # :rtype: Integer
  def top
    stack.last
  end

  # Returns whether the stack is empty.
  # :rtype: Boolean
  def empty
    stack.empty?
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
