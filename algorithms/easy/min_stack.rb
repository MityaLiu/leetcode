# frozen_string_literal: true

class MinStack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def push(x)
    stack.push x
  end

  def pop
    stack.pop
  end

  def top
    stack.last
  end

  def get_min
    stack.min
  end
end
