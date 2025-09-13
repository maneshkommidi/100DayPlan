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
