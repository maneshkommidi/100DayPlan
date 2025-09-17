def search(nums, target)
  return -1 unless nums.include?(target)
  nums.each_with_index do |num, index|
    return index if target == num
  end
end