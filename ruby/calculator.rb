def calcultor(nums, operator)
  case operator
  when '+'
    result = nums[0] + nums[1]
  when '-'
    result = nums[0] - nums[1]
  when '*', 'x'
    result = nums[0] * nums[1]
  when '/', '%'
    return 'Invalid data' if nums[1] == 0
    result = nums[0].to_f / nums[1]
  else
    return 'Invalid operator'
  end
  result
end

loop do
  print "Enter the first number:"
  num1 = gets.chomp.to_f
  print "Enter the second number:"
  num2 = gets.chomp.to_f
  print "Enter the opertor (+, -, *, % or /)"
  operator = gets.chomp.to_f
  result = calcultor([num1, num2], operator)
  print "result is #{result}"
  print "Enter Y or y to continue"
  continue = gets.chomp.downcase
  break unless continue == 'y'
end
