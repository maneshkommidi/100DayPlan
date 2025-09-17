class MinStack
  def initialize()
    @stack = []
    @min_stack = []
  end


=begin
  :type val: Integer
  :rtype: Void
=end
  def push(val)
    @stack << val
    min = @min_stack.empty? ? val : [val, @min_stack[-1]].min
    @min_stack.push(min)
  end


=begin
  :rtype: Void
=end
  def pop()
    @stack.pop
    @min_stack.pop
  end


=begin
  :rtype: Integer
=end
  def top()
    @stack[-1]
  end


=begin
  :rtype: Integer
=end
  def get_min()
    @min_stack[-1]
  end
end
