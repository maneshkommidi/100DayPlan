#Maximum Subarray (Kadane’s Algo, LeetCode #53)

def max_sub_array(nums)
  return if nums.empty?
  max_sum = current_sum = nums[0]
  nums[1..-1].each do |num|
    current_sum = [num, current_sum + num].max
    max_sum = [max_sum, current_sum].max
  end
  max_sum
end
