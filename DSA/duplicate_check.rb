#Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

def contains_duplicate(nums)
  sorted_nums = nums.sort
  sorted_nums.each_with_index do |num, index|
    return true if sorted_nums[index] == sorted_nums[index-1]
  end
  false
end