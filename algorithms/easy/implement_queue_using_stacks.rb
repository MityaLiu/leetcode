# frozen_string_literal: true

class MyQueue
  attr_reader :queue

  # Initialize your data structure here.
  def initialize
    @queue = []
  end

  # Push element x to the back of queue.
  # :type x: Integer
  # :rtype: Void
  def push(x)
    queue << x
  end

  # Removes the element from in front of queue and returns that element.
  # :rtype: Integer
  def pop
    queue.shift
  end

  # Get the front element.
  # :rtype: Integer
  def peek
    queue.first
  end

  # Returns whether the queue is empty.
  # :rtype: Boolean
  def empty
    queue.empty?
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
