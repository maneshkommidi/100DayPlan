#Implement Queue using Stacks (#232)
class MyQueue
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def push(x)
    @in_stack.push(x)
  end

  def pop
    shift_stacks
    @out_stack.pop
  end

  def peek
    shift_stacks
    @out_stack[-1]
  end

  def empty
    @in_stack.empty? && @out_stack.empty?
  end

  private

  def shift_stacks
    if @out_stack.empty?
      @out_stack = @in_stack.reverse
      @in_stack.clear
    end
  end
end
