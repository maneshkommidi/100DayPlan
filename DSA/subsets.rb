#Subsets (LeetCode #78)
def subsets(nums)
  result = []
  helper(nums, 0 , [], result)
  result 
end

def helper(nums, start, path, result)
  result << path.dup
  (start...nums.size).each do |i|
    path << nums[i]
    helper(nums, i + 1, path, result)
    path.pop
  end
end
