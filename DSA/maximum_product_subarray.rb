def max_product(nums)
  return 0 if nums.empty?
  max_so_far = min_so_far = result = nums[0]
  nums[1..-1].each do |num|
    if num < 0
      max_so_far, min_so_far = min_so_far, max_so_far
    end
    min_so_far = [num, min_so_far * num].min
    max_so_far = [num, max_so_far * num].max

    result = [result, max_so_far].max
  end   
end