#Find First and Last Position in Sorted Array (#34)
def search_range(nums, target)
  return [-1, -1] unless nums.include?(target)
  result = []
  nums.each_with_index do |num, index|
    result << index if target == num
  end
  result << result[0] if result.size == 1
  [result.first, result.last]
end
