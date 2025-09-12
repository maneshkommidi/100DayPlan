def find_min(nums)
  min_num = nums[0]
  nums[1..-1].each do |num|
    min_num = num if min_num > num
  end
  min_num
end

find_min([2, 3, 4, 1])