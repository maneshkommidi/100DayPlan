def search(nums, target)
  nums = nums.sort
  left = 0
  right = nums.length - 1
  while left <= right
    mid = (left + right)/2
    return mid if target == nums[mid]
    if nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  -1
end